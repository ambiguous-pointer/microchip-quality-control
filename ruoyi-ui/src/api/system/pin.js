import request from '@/utils/request'

// 查询针脚检测日志列表
export function listPin(query) {
  return request({
    url: '/system/pin/list',
    method: 'get',
    params: query
  })
}

// 查询针脚检测日志详细
export function getPin(uid) {
  return request({
    url: '/system/pin/' + uid,
    method: 'get'
  })
}

// 新增针脚检测日志
export function addPin(data) {
  return request({
    url: '/system/pin',
    method: 'post',
    data: data
  })
}

// 修改针脚检测日志
export function updatePin(data) {
  return request({
    url: '/system/pin',
    method: 'put',
    data: data
  })
}

// 删除针脚检测日志
export function delPin(uid) {
  return request({
    url: '/system/pin/' + uid,
    method: 'delete'
  })
}
