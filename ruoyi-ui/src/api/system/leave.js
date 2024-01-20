import request from '@/utils/request'

// 查询请假信息列表
export function listLeave(query) {
  return request({
    url: '/system/leave/list',
    method: 'get',
    params: query
  })
}
export function listApproval() {
  return request({
    url: '/system/leave/listApproval',
    method: 'get'
  })
}

// 查询请假信息详细
export function getLeave(leaveId) {
  return request({
    url: '/system/leave/' + leaveId,
    method: 'get'
  })
}

// 新增请假信息
export function addLeave(data) {
  return request({
    url: '/system/leave',
    method: 'post',
    data: data
  })
}

// 修改请假信息
export function updateLeave(data) {
  return request({
    url: '/system/leave',
    method: 'put',
    data: data
  })
}

// 删除请假信息
export function delLeave(leaveId) {
  return request({
    url: '/system/leave/' + leaveId,
    method: 'delete'
  })
}
