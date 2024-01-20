<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
<!--      <el-form-item label="请假人id" prop="userId">-->
<!--        <el-input-->
<!--          v-model="queryParams.userId"-->
<!--          placeholder="请输入请假人id"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item label="请假人" prop="userName">
        <el-input
          v-model="queryParams.userName"
          placeholder="请输入请假人"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="请假类型" prop="leaveType">
        <el-select v-model="queryParams.leaveType" placeholder="请选择请假类型" clearable>
          <el-option
            v-for="dict in dict.type.sys_leave_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="请假时长" prop="leaveTimeType">
        <el-select v-model="queryParams.leaveTimeType" placeholder="请选择请假时长类型" clearable>
          <el-option
            v-for="dict in dict.type.sys_leave_time_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
<!--      <el-form-item label="开始时间" prop="startTime">-->
<!--        <el-date-picker clearable-->
<!--          v-model="queryParams.startTime"-->
<!--          type="date"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          placeholder="请选择开始时间">-->
<!--        </el-date-picker>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="结束时间" prop="endTime">-->
<!--        <el-date-picker clearable-->
<!--          v-model="queryParams.endTime"-->
<!--          type="date"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          placeholder="请选择结束时间">-->
<!--        </el-date-picker>-->
<!--      </el-form-item>-->
      <el-form-item label="是否离校" prop="isLeaveSchool">
        <el-select v-model="queryParams.isLeaveSchool" placeholder="请选择是否离校" clearable>
          <el-option
            v-for="dict in dict.type.sys_is_leave_school"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
<!--      <el-form-item label="离校地址" prop="address">-->
<!--        <el-input-->
<!--          v-model="queryParams.address"-->
<!--          placeholder="请输入离校目的地地址"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="请假原因" prop="reason">-->
<!--        <el-input-->
<!--          v-model="queryParams.reason"-->
<!--          placeholder="请输入请假原因"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="紧急联系人" prop="ecpPhone">-->
<!--        <el-input-->
<!--          v-model="queryParams.ecpPhone"-->
<!--          placeholder="请输入紧急联系人"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="审批人id" prop="approvalId">-->
<!--        <el-input-->
<!--          v-model="queryParams.approvalId"-->
<!--          placeholder="请输入审批人id"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item label="审批人" prop="approvalName">
        <el-input
          v-model="queryParams.approvalName"
          placeholder="请输入审批人"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="审批类型" prop="approvalType">
        <el-select v-model="queryParams.approvalType" placeholder="请选择审批类型" clearable>
          <el-option
            v-for="dict in dict.type.sys_approval_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="销假状态" prop="leaveStatus">
        <el-select v-model="queryParams.leaveStatus" placeholder="请选择销假状态" clearable>
          <el-option
            v-for="dict in dict.type.sys_leave_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
<!--      <el-form-item label="是否删除" prop="deleted">-->
<!--        <el-input-->
<!--          v-model="queryParams.deleted"-->
<!--          placeholder="请输入是否删除"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:leave:add']"
        >请假申请</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:leave:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:leave:remove']"
        >撤销</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:leave:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="leaveList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="50" align="center" />
      <el-table-column label="请假编号" align="center" prop="leaveId" />
<!--      <el-table-column label="请假人id" align="center" prop="userId" />-->
      <el-table-column label="请假人" align="center" prop="userName" />
      <el-table-column label="请假类型" align="center" prop="leaveType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_leave_type" :value="scope.row.leaveType"/>
        </template>
      </el-table-column>
      <el-table-column label="请假时长" align="center" prop="leaveTimeType" width="120">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_leave_time_type" :value="scope.row.leaveTimeType"/>
        </template>
      </el-table-column>
      <el-table-column label="开始时间" align="center" prop="startTime" width="120">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.startTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="结束时间" align="center" prop="endTime" width="120">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.endTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="是否离校" align="center" prop="isLeaveSchool">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_is_leave_school" :value="scope.row.isLeaveSchool"/>
        </template>
      </el-table-column>
      <el-table-column label="离校地址" align="center" prop="address" />
      <el-table-column label="请假原因" align="center" prop="reason" width="120"/>
      <el-table-column label="紧急联系人" align="center" prop="ecpPhone" width="120"/>
<!--      <el-table-column label="审批人id" align="center" prop="approvalId" />-->
      <el-table-column label="审批人" align="center" prop="approvalName" width="100" />
      <el-table-column label="审批类型" align="center" prop="approvalType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_approval_type" :value="scope.row.approvalType"/>
        </template>
      </el-table-column>
      <el-table-column label="审批意见" align="center" prop="approvalAdvice" width="100"/>
      <el-table-column label="销假状态" align="center" prop="leaveStatus">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_leave_status" :value="scope.row.leaveStatus"/>
        </template>
      </el-table-column>
<!--      <el-table-column label="是否删除" align="center" prop="deleted">-->
<!--        <template slot-scope="scope">-->
<!--          <dict-tag :options="dict.type.sys_deleted" :value="scope.row.deleted"/>-->
<!--        </template>-->
<!--      </el-table-column>-->
<!--      <el-table-column label="备注" align="center" prop="remark" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" width="120">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:leave:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:leave:remove']"
          >撤销</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改请假信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
<!--        <el-form-item label="请假人id" prop="userId">-->
<!--          <el-input v-model="form.userId" placeholder="请输入请假人id" />-->
<!--        </el-form-item>-->
<!--        <el-form-item label="请假人" prop="userName">-->
<!--          <el-input v-model="form.userName" placeholder="请输入请假人" />-->
<!--        </el-form-item>-->
        <el-form-item label="请假类型" prop="leaveType">
          <el-select v-model="form.leaveType" placeholder="请选择请假类型">
            <el-option
              v-for="dict in dict.type.sys_leave_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="请假时长" prop="leaveTimeType">
          <el-select v-model="form.leaveTimeType" placeholder="请选择请假时长类型">
            <el-option
              v-for="dict in dict.type.sys_leave_time_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="开始时间" prop="startTime">
          <el-date-picker clearable
            v-model="form.startTime"
            type="date"
            value-format="yyyy-MM-dd"
            :picker-options="pickerOptionsStart"
            placeholder="请选择开始时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="结束时间" prop="endTime">
          <el-date-picker clearable
            v-model="form.endTime"
            type="date"
            value-format="yyyy-MM-dd"
            :picker-options="pickerOptionsEnd"
            placeholder="请选择结束时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="是否离校" prop="isLeaveSchool">
          <el-radio-group v-model="form.isLeaveSchool">
            <el-radio
              v-for="dict in dict.type.sys_is_leave_school"
              :key="dict.value"
              :label="dict.value"
            >{{dict.label}}</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="离校地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入离校目的地地址" />
        </el-form-item>
        <el-form-item label="请假原因" prop="reason">
          <el-input v-model="form.reason" placeholder="请输入请假原因" />
        </el-form-item>
        <el-form-item label="联系人" prop="ecpPhone">
          <el-input v-model="form.ecpPhone" placeholder="请输入紧急联系人" maxlength="11"/>
        </el-form-item>
<!--        <el-form-item label="审批人id" prop="approvalId">-->
<!--          <el-input v-model="form.approvalId" placeholder="请输入审批人id" />-->
<!--        </el-form-item>-->
        <el-form-item label="审批人" prop="approvalName" >
          <el-select v-model="form.approvalId" placeholder="请选择审批人">
            <el-option
              v-for="item in listApproval"
              :key="item.userId"
              :label="item.nickName"
              :value="item.userId"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="审批类型" prop="approvalType" hidden>
          <el-select v-model="form.approvalType" placeholder="请选择审批类型">
            <el-option
              v-for="dict in dict.type.sys_approval_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="销假状态" prop="leaveStatus" hidden>
          <el-select v-model="form.leaveStatus" placeholder="请选择销假状态">
            <el-option
              v-for="dict in dict.type.sys_leave_status"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
<!--        <el-form-item label="是否删除" prop="deleted">-->
<!--          <el-input v-model="form.deleted" placeholder="请输入是否删除" />-->
<!--        </el-form-item>-->
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listLeave, getLeave, delLeave, addLeave, updateLeave, listApproval } from "@/api/system/leave";

export default {
  name: "Leave",
  dicts: ['sys_leave_time_type', 'sys_leave_status', 'sys_is_leave_school', 'sys_leave_type', 'sys_approval_type'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 请假信息表格数据
      leaveList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      //判断修改还是新增
      flag: 0,
      // 审批人列表
      listApproval: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        userId: null,
        userName: null,
        leaveType: null,
        leaveTimeType: null,
        startTime: null,
        endTime: null,
        isLeaveSchool: null,
        address: null,
        reason: null,
        ecpPhone: null,
        approvalId: null,
        approvalName: null,
        approvalType: null,
        leaveStatus: null,
        deleted: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        leaveType: [
          { required: true, message: "请假类型不能为空", trigger: "blur" }
        ],
        isLeaveSchool: [
          { required: true, message: "是否离校不能为空", trigger: "blur" }
        ],
        approvalId: [
          { required: true, message: "审批人不能为空", trigger: "blur" }
        ],
        leaveTimeType: [
          { required: true, message: "请假时长不能为空", trigger: "blur" }
        ],
        startTime: [
          { required: true, message: "开始时间不能为空", trigger: "blur" }
        ],
        endTime: [
          { required: true, message: "结束时间不能为空", trigger: "blur" }
        ],
        reason: [
          { required: true, message: "请假原因不能为空", trigger: "blur" }
        ],
        ecpPhone: [
          {
              pattern: /^1[3|4|5|6|7|8|9][0-9]\d{8}$/,
              message: "请输入正确的手机号码",
              trigger: "blur"
          }
        ]
      },
      // 开始结束日期限制
      pickerOptionsStart: {
          disabledDate: (time) => {
              if (this.form.endTime) {
                  return (
                      time.getTime() >= new Date(this.form.endTime).getTime()
                  );
              }else{
                  return (
                      time.getTime() <= new Date().getTime()-8.64e7
                  );
              }
          }
      },
      // 结束日期限制
      pickerOptionsEnd: {
          disabledDate: (time) => {
              if (this.form.startTime) {
                  return (
                      time.getTime() <= new Date(this.form.startTime).getTime()-8.64e7
                  );
              }
          }
      }
    };
  },
  created() {
    this.getList();
    this.getApprovalList();
  },
  methods: {
    /** 查询请假信息列表 */
    getApprovalList(){
        listApproval().then(response => {
          this.listApproval = response.data;
        });
    },
    getList() {
      this.loading = true;
      listLeave(this.queryParams).then(response => {
        this.leaveList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        leaveId: null,
        userId: null,
        userName: null,
        leaveType: null,
        leaveTimeType: null,
        startTime: null,
        endTime: null,
        isLeaveSchool: "0",
        address: null,
        reason: null,
        ecpPhone: null,
        approvalId: null,
        approvalName: null,
        approvalType: null,
        leaveStatus: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        deleted: null,
        remark: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.leaveId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "请假申请";
      this.flag = 1;
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const leaveId = row.leaveId || this.ids
      getLeave(leaveId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改请假信息";
        this.flag = 0;
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.leaveId != null) {
            updateLeave(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addLeave(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const leaveIds = row.leaveId || this.ids;
      this.$modal.confirm('是否确认撤销请假信息编号为"' + leaveIds + '"的数据项？').then(function() {
        return delLeave(leaveIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("撤销成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/leave/export', {
        ...this.queryParams
      }, `leave_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
