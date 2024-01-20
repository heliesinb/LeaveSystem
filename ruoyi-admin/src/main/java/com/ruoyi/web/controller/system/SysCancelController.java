package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.SysLeave;
import com.ruoyi.system.service.ISysCancelService;
import com.ruoyi.system.service.ISysLeaveService;
import org.aspectj.weaver.loadtime.Aj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 销假信息Controller
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
@RestController
@RequestMapping("/system/cancel")
public class SysCancelController extends BaseController
{
    @Autowired
    private ISysCancelService sysCancelService;

    /**
     * 查询销假信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:cancel:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysLeave sysLeave)
    {
        startPage();
        List<SysLeave> list = sysCancelService.selectSysLeaveList(sysLeave);
        return getDataTable(list);
    }

    /**
     * 导出销假信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:cancel:export')")
    @Log(title = "销假信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysLeave sysLeave)
    {
        List<SysLeave> list = sysCancelService.selectSysLeaveList(sysLeave);
        ExcelUtil<SysLeave> util = new ExcelUtil<SysLeave>(SysLeave.class);
        util.exportExcel(response, list, "销假信息数据");
    }

    /**
     * 获取销假信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:cancel:query')")
    @GetMapping(value = "/{leaveId}")
    public AjaxResult getInfo(@PathVariable("leaveId") Long leaveId)
    {
        return AjaxResult.success(sysCancelService.selectSysLeaveByLeaveId(leaveId));
    }

    /**
     * 销假信息
     */
    @PreAuthorize("@ss.hasPermi('system:cancel:edit')")
    @Log(title = "请假信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysLeave sysLeave)
    {
        sysLeave.setUpdateBy(getUsername());
        int i = sysCancelService.updateSysLeaveToRecall(sysLeave);
        if(i == -1){
            return AjaxResult.error("暂未审批,无法销假");
        }
        if(i == -2){
            return AjaxResult.error("审批驳回,无需销假");
        }
        return toAjax(i);
    }

    /**
     * 删除销假信息
     */
    @PreAuthorize("@ss.hasPermi('system:cancel:remove')")
    @Log(title = "请假信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{leaveIds}")
    public AjaxResult remove(@PathVariable Long[] leaveIds)
    {
        return toAjax(sysCancelService.deleteSysLeaveByLeaveIds(leaveIds));
    }

}
