package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 请假信息对象 sys_leave
 * 
 * @author cVzhanshi
 * @date 2022-04-19
 */
public class SysLeave extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 请假ID */
    @Excel(name = "请假编号")
    private Long leaveId;

    /** 请假人id */
    @Excel(name = "请假人id")
    private Long userId;

    /** 请假人 */
    @Excel(name = "请假人")
    private String userName;

    /** 请假类型 */
    @Excel(name = "请假类型")
    private String leaveType;

    /** 请假时长类型 */
    @Excel(name = "请假时长类型1-(1天内)2-(1-3天)3-(>3天)")
    private String leaveTimeType;

    /** 开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    /** 是否离校 */
    @Excel(name = "是否离校1-是2-否")
    private String isLeaveSchool;

    /** 离校目的地地址 */
    @Excel(name = "离校目的地地址")
    private String address;

    /** 请假原因 */
    @Excel(name = "请假原因")
    private String reason;

    /** 紧急联系人 */
    @Excel(name = "紧急联系人")
    private String ecpPhone;

    /** 审批人id */
    @Excel(name = "审批人id")
    private Long approvalId;

    /** 审批人 */
    @Excel(name = "审批人")
    private String approvalName;

    /** 审批类型 */
    @Excel(name = "审批类型1-未审批2-审批通过3-审批驳回")
    private String approvalType;

    /** 销假状态 */
    @Excel(name = "销假状态1-未销假2-已销假")
    private String leaveStatus;

    /** 是否删除 */
//    @Excel(name = "是否删除")
    private String deleted;

    /** 审批意见 **/
    @Excel(name = "审批意见")
    private String approvalAdvice;

    public String getApprovalAdvice() {
        return approvalAdvice;
    }

    public void setApprovalAdvice(String approvalAdvice) {
        this.approvalAdvice = approvalAdvice;
    }

    public void setLeaveId(Long leaveId)
    {
        this.leaveId = leaveId;
    }

    public Long getLeaveId() 
    {
        return leaveId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }

    public String getUserName() 
    {
        return userName;
    }
    public void setLeaveType(String leaveType) 
    {
        this.leaveType = leaveType;
    }

    public String getLeaveType() 
    {
        return leaveType;
    }
    public void setLeaveTimeType(String leaveTimeType) 
    {
        this.leaveTimeType = leaveTimeType;
    }

    public String getLeaveTimeType() 
    {
        return leaveTimeType;
    }
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }
    public void setIsLeaveSchool(String isLeaveSchool) 
    {
        this.isLeaveSchool = isLeaveSchool;
    }

    public String getIsLeaveSchool() 
    {
        return isLeaveSchool;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setReason(String reason) 
    {
        this.reason = reason;
    }

    public String getReason() 
    {
        return reason;
    }
    public void setEcpPhone(String ecpPhone) 
    {
        this.ecpPhone = ecpPhone;
    }

    public String getEcpPhone() 
    {
        return ecpPhone;
    }
    public void setApprovalId(Long approvalId) 
    {
        this.approvalId = approvalId;
    }

    public Long getApprovalId() 
    {
        return approvalId;
    }
    public void setApprovalName(String approvalName) 
    {
        this.approvalName = approvalName;
    }

    public String getApprovalName() 
    {
        return approvalName;
    }
    public void setApprovalType(String approvalType) 
    {
        this.approvalType = approvalType;
    }

    public String getApprovalType() 
    {
        return approvalType;
    }
    public void setLeaveStatus(String leaveStatus) 
    {
        this.leaveStatus = leaveStatus;
    }

    public String getLeaveStatus() 
    {
        return leaveStatus;
    }
    public void setDeleted(String deleted) 
    {
        this.deleted = deleted;
    }

    public String getDeleted() 
    {
        return deleted;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("leaveId", getLeaveId())
            .append("userId", getUserId())
            .append("userName", getUserName())
            .append("leaveType", getLeaveType())
            .append("leaveTimeType", getLeaveTimeType())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("isLeaveSchool", getIsLeaveSchool())
            .append("address", getAddress())
            .append("reason", getReason())
            .append("ecpPhone", getEcpPhone())
            .append("approvalId", getApprovalId())
            .append("approvalName", getApprovalName())
            .append("approvalType", getApprovalType())
            .append("leaveStatus", getLeaveStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("deleted", getDeleted())
            .append("remark", getRemark())
            .append("approvalAdvice",getApprovalAdvice())
            .toString();
    }
}
