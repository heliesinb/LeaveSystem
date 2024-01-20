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
import com.ruoyi.system.service.ISysApprovalService;
import com.ruoyi.system.service.ISysLeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 审批信息Controller
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
@RestController
@RequestMapping("/system/approval")
public class SysApprovalController extends BaseController
{
    @Autowired
    private ISysApprovalService sysApprovalService;

    /**
     * 查询审批信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:approval:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysLeave sysLeave)
    {
        startPage();
        if (!SysUser.isAdmin(SecurityUtils.getUserId())){
            sysLeave.setApprovalId(SecurityUtils.getUserId());
        }
        List<SysLeave> list = sysApprovalService.selectSysLeaveList(sysLeave);
        return getDataTable(list);
    }

    /**
     * 导出审批信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:approval:export')")
    @Log(title = "审批信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysLeave sysLeave)
    {
        List<SysLeave> list = sysApprovalService.selectSysLeaveList(sysLeave);
        ExcelUtil<SysLeave> util = new ExcelUtil<SysLeave>(SysLeave.class);
        util.exportExcel(response, list, "审批信息数据");
    }

    /**
     * 获取审批信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:approval:query')")
    @GetMapping(value = "/{leaveId}")
    public AjaxResult getInfo(@PathVariable("leaveId") Long leaveId)
    {
        return AjaxResult.success(sysApprovalService.selectSysLeaveByLeaveId(leaveId));
    }

    /**
     * 修改请假信息
     */
    @PreAuthorize("@ss.hasPermi('system:approval:edit')")
    @Log(title = "请假信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysLeave sysLeave)
    {
        sysLeave.setUpdateBy(getUsername());
        int i = sysApprovalService.updateSysLeave(sysLeave);
        if(i < 0){
            return AjaxResult.error("请勿重复审批");
        }
        return toAjax(i);
    }

    /**
     * 删除审批信息
     */
    @PreAuthorize("@ss.hasPermi('system:approval:remove')")
    @Log(title = "请假信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{leaveIds}")
    public AjaxResult remove(@PathVariable Long[] leaveIds)
    {
        return toAjax(sysApprovalService.deleteSysLeaveByLeaveIds(leaveIds));
    }

}
