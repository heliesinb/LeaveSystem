package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.SysLeave;

/**
 * 请假信息Mapper接口
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
public interface SysLeaveMapper 
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
     * 删除请假信息
     * 
     * @param leaveId 请假信息主键
     * @return 结果
     */
    public int deleteSysLeaveByLeaveId(Long leaveId);

    /**
     * 批量删除请假信息
     * 
     * @param leaveIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysLeaveByLeaveIds(Long[] leaveIds);
}
