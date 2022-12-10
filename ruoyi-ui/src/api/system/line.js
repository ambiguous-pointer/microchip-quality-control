import request from '@/utils/request'

// 查询产业线管理列表
export function listLine(query) {
  return request({
    url: '/system/line/list',
    method: 'get',
    params: query
  })
}

// 查询产业线管理详细
export function getLine(uId) {
  return request({
    url: '/system/line/' + uId,
    method: 'get'
  })
}

// 新增产业线管理
export function addLine(data) {
  return request({
    url: '/system/line',
    method: 'post',
    data: data
  })
}

// 修改产业线管理
export function updateLine(data) {
  return request({
    url: '/system/line',
    method: 'put',
    data: data
  })
}

// 删除产业线管理
export function delLine(uId) {
  return request({
    url: '/system/line/' + uId,
    method: 'delete'
  })
}
