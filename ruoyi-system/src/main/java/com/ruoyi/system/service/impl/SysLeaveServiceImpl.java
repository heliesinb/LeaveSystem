package com.ruoyi.system.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.common.core.domain.entity.SysDept;
import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.mapper.SysDeptMapper;
import com.ruoyi.system.mapper.SysRoleMapper;
import com.ruoyi.system.mapper.SysUserMapper;
import com.ruoyi.system.service.ISysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysLeaveMapper;
import com.ruoyi.system.domain.SysLeave;
import com.ruoyi.system.service.ISysLeaveService;

/**
 * 请假信息Service业务层处理
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
@Service
public class SysLeaveServiceImpl implements ISysLeaveService 
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
     * 查询请假信息列表
     * 
     * @param sysLeave 请假信息
     * @return 请假信息
     */
    @Override
    @DataScope(deptAlias = "d",userAlias = "u")
    public List<SysLeave> selectSysLeaveList(SysLeave sysLeave)
    {
        Long userId = SecurityUtils.getUserId();
        // 查询出当前用户的角色
        List<SysRole> roles = sysRoleMapper.selectRolePermissionByUserId(userId);
        if(roles.get(0).getRoleId() == 2){
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
        SysUser approvalUser = sysUserMapper.selectUserById(sysLeave.getApprovalId());
        sysLeave.setApprovalName(approvalUser.getNickName());
        if(!SysUser.isAdmin(SecurityUtils.getUserId())){
            if(!sysLeave.getApprovalType().equals("1")) {
                return -1;
            }
        }
        return sysLeaveMapper.updateSysLeave(sysLeave);
    }


    /**
     * 批量撤销请假信息
     * 
     * @param leaveIds 需要撤销的请假信息主键
     * @return 结果
     */
    @Override
    public int deleteSysLeaveByLeaveIds(Long[] leaveIds)
    {
        if(!SysUser.isAdmin(SecurityUtils.getUserId())){
            for (int i = 0; i < leaveIds.length; i++) {
                Long leaveId = leaveIds[i];
                SysLeave sysLeave = sysLeaveMapper.selectSysLeaveByLeaveId(leaveId);
                if(!sysLeave.getApprovalType().equals("1")){
                    return -1;
                }
            }
        }
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

    /**
     * 获取可以审批的人
     * @return
     */
    @Override
    public List<SysUser> selectApprovalList() {
        Long deptId = SecurityUtils.getDeptId();
        Long userId = SecurityUtils.getUserId();
        // 查询除当前用户的角色
        List<SysRole> roles = sysRoleMapper.selectRolePermissionByUserId(userId);
        List<Long> roleList = new ArrayList<>();
        for (int i = 0; i < roles.size(); i++) {
            roleList.add(roles.get(i).getRoleId());
        }
        Collections.sort(roleList,(a, b) -> (Integer.valueOf(b.toString()) - Integer.valueOf(a.toString())));
        Long aLong = roleList.get(0);
        SysDept dept = sysDeptMapper.selectDeptById(deptId);
        // 查询初当前部门的祖级列表
        String ancestors = dept.getAncestors();
        String[] split = ancestors.split(",");
        List<Long> deptIdList = new ArrayList<>();
        deptIdList.add(deptId);
        for (int i = 0; i < split.length; i++) {
            deptIdList.add(Long.valueOf(split[i]));
        }
        if(deptIdList.size() == 0){
            return null;
        }
        List<SysUser> list = sysUserMapper.selectUserByDeptIdList(deptIdList,aLong);
        return list;
    }
}
