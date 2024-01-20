package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.SysDept;
import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.SysLeave;
import com.ruoyi.system.mapper.SysDeptMapper;
import com.ruoyi.system.mapper.SysLeaveMapper;
import com.ruoyi.system.mapper.SysRoleMapper;
import com.ruoyi.system.mapper.SysUserMapper;
import com.ruoyi.system.service.ISysCancelService;
import com.ruoyi.system.service.ISysLeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 请假信息Service业务层处理
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
@Service
public class SysCancelServiceImpl implements ISysCancelService
{
    @Autowired
    private SysLeaveMapper sysLeaveMapper;

    @Autowired
    private SysDeptMapper sysDeptMapper;

    @Autowired
    private SysUserMapper sysUserMapper;

    @Autowired
    private SysRoleMapper sysRoleMapper;


    /**
     * 查询请假信息
     * 
     * @param leaveId 请假信息主键
     * @return 请假信息
     */
    @Override
    public SysLeave selectSysLeaveByLeaveId(Long leaveId)
    {
        return sysLeaveMapper.selectSysLeaveByLeaveId(leaveId);
    }

    /**
     * 查询销假信息列表
     * 
     * @param sysLeave 销假信息
     * @return 销假信息
     */
    @Override
    public List<SysLeave> selectSysLeaveList(SysLeave sysLeave)
    {
        Long userId = SecurityUtils.getUserId();
        if(!SysUser.isAdmin(userId)){
            sysLeave.setUserId(userId);
        }
        return sysLeaveMapper.selectSysLeaveList(sysLeave);
    }

    /**
     * 新增请假信息
     * 
     * @param sysLeave 请假信息
     * @return 结果
     */
    @Override
    public int insertSysLeave(SysLeave sysLeave)
    {
        LoginUser loginUser = SecurityUtils.getLoginUser();
        SysUser approvalUser = sysUserMapper.selectUserById(sysLeave.getApprovalId());
        sysLeave.setApprovalName(approvalUser.getNickName());
        sysLeave.setUserId(loginUser.getUserId());
        sysLeave.setUserName(loginUser.getUser().getNickName());
        sysLeave.setCreateTime(DateUtils.getNowDate());
        return sysLeaveMapper.insertSysLeave(sysLeave);
    }

    /**
     * 修改请假信息
     * 
     * @param sysLeave 请假信息
     * @return 结果
     */
    @Override
    public int updateSysLeave(SysLeave sysLeave)
    {
        sysLeave.setUpdateTime(DateUtils.getNowDate());
        if(!sysLeave.getApprovalType().equals("1")) {
            return -1;
        }
        return sysLeaveMapper.updateSysLeave(sysLeave);
    }

    @Override
    public int updateSysLeaveToRecall(SysLeave sysLeave)
    {
        sysLeave.setUpdateTime(DateUtils.getNowDate());
        if(sysLeave.getApprovalType().equals("1")){
            return -1;
        }else if(sysLeave.getApprovalType().equals("3")){
            return -2;
        }
        return sysLeaveMapper.updateSysLeave(sysLeave);
    }

    /**
     * 批量删除请假信息
     * 
     * @param leaveIds 需要删除的请假信息主键
     * @return 结果
     */
    @Override
    public int deleteSysLeaveByLeaveIds(Long[] leaveIds)
    {
        return sysLeaveMapper.deleteSysLeaveByLeaveIds(leaveIds);
    }

    /**
     * 删除请假信息信息
     * 
     * @param leaveId 请假信息主键
     * @return 结果
     */
    @Override
    public int deleteSysLeaveByLeaveId(Long leaveId)
    {
        SysLeave sysLeave = sysLeaveMapper.selectSysLeaveByLeaveId(leaveId);
        if(!sysLeave.getApprovalType().equals("1")){
            return -1;
        }
        return sysLeaveMapper.deleteSysLeaveByLeaveId(leaveId);
    }
}
