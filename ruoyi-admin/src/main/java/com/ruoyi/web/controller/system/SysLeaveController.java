package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysUser;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SysLeave;
import com.ruoyi.system.service.ISysLeaveService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 请假信息Controller
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
@RestController
@RequestMapping("/system/leave")
public class SysLeaveController extends BaseController
{
    @Autowired
    private ISysLeaveService sysLeaveService;

    /**
     * 查询请假信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:leave:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysLeave sysLeave)
    {
        startPage();
        List<SysLeave> list = sysLeaveService.selectSysLeaveList(sysLeave);
        return getDataTable(list);
    }

    /**
     * 导出请假信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:leave:export')")
    @Log(title = "请假信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysLeave sysLeave)
    {
        List<SysLeave> list = sysLeaveService.selectSysLeaveList(sysLeave);
        ExcelUtil<SysLeave> util = new ExcelUtil<SysLeave>(SysLeave.class);
        util.exportExcel(response, list, "请假信息数据");
    }

    /**
     * 获取请假信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:leave:query')")
    @GetMapping(value = "/{leaveId}")
    public AjaxResult getInfo(@PathVariable("leaveId") Long leaveId)
    {
        return AjaxResult.success(sysLeaveService.selectSysLeaveByLeaveId(leaveId));
    }

    /**
     * 新增请假信息
     */
    @PreAuthorize("@ss.hasPermi('system:leave:add')")
    @Log(title = "请假信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysLeave sysLeave)
    {
        sysLeave.setCreateBy(getUsername());
        return toAjax(sysLeaveService.insertSysLeave(sysLeave));
    }

    /**
     * 修改请假信息
     */
    @PreAuthorize("@ss.hasPermi('system:leave:edit')")
    @Log(title = "请假信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysLeave sysLeave)
    {
        sysLeave.setUpdateBy(getUsername());
        int i = sysLeaveService.updateSysLeave(sysLeave);
        if(i < 0){
            return AjaxResult.error("流程中，不能修改");
        }
        return toAjax(i);
    }

    /**
     * 删除请假信息
     */
    @PreAuthorize("@ss.hasPermi('system:leave:remove')")
    @Log(title = "请假信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{leaveIds}")
    public AjaxResult remove(@PathVariable Long[] leaveIds)
    {
        int i = sysLeaveService.deleteSysLeaveByLeaveIds(leaveIds);
        if(i < 0){
            return AjaxResult.error("流程中，不能撤销");
        }
        return toAjax(i);
    }

    /**
     * 获取可以审批的人
     * @return
     */
    @GetMapping("/listApproval")
    public AjaxResult getApprovalList(){
        List<SysUser> users = sysLeaveService.selectApprovalList();
        return AjaxResult.success(users);
    }
}
