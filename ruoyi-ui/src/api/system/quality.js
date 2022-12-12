import request from '@/utils/request'

// 查询检查列表
export function listQuality(query) {
  return request({
    url: '/system/quality/list',
    method: 'get',
    params: query
  })
}
// 查询检查列表
export function listQuality1(query) {
  return request({
    url: '/system/quality/list1',
    method: 'get',
    params: query
  })
}

// 查询检查详细
export function getQuality(id) {
  return request({
    url: '/system/quality/' + id,
    method: 'get'
  })
}

// 新增检查
export function addQuality(data) {
  return request({
    url: '/system/quality',
    method: 'post',
    data: data
  })
}

// 修改检查
export function updateQuality(data) {
  return request({
    url: '/system/quality',
    method: 'put',
    data: data
  })
}

// 删除检查
export function delQuality(id) {
  return request({
    url: '/system/quality/' + id,
    method: 'delete'
  })
}
