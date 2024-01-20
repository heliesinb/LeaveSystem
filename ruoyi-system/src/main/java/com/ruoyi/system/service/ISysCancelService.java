package com.ruoyi.system.service;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.system.domain.SysLeave;

import java.util.List;

/**
 * 请假信息Service接口
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
public interface ISysCancelService
{
    /**
     * 查询请假信息
     * 
     * @param leaveId 请假信息主键
     * @return 请假信息
     */
    public SysLeave selectSysLeaveByLeaveId(Long leaveId);

    /**
     * 查询请假信息列表
     * 
     * @param sysLeave 请假信息
     * @return 请假信息集合
     */
    public List<SysLeave> selectSysLeaveList(SysLeave sysLeave);

    /**
     * 新增请假信息
     * 
     * @param sysLeave 请假信息
     * @return 结果
     */
    public int insertSysLeave(SysLeave sysLeave);

    /**
     * 修改请假信息
     * 
     * @param sysLeave 请假信息
     * @return 结果
     */
    public int updateSysLeave(SysLeave sysLeave);

    /**
     * 销假
     * @param sysLeave
     * @return
     */
    public int updateSysLeaveToRecall(SysLeave sysLeave);

    /**
     * 批量删除请假信息
     * 
     * @param leaveIds 需要删除的请假信息主键集合
     * @return 结果
     */
    public int deleteSysLeaveByLeaveIds(Long[] leaveIds);

    /**
     * 删除请假信息信息
     * 
     * @param leaveId 请假信息主键
     * @return 结果
     */
    public int deleteSysLeaveByLeaveId(Long leaveId);

}
