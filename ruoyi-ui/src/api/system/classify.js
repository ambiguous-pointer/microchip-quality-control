import request from '@/utils/request'

// 查询分类识别日志列表
export function listClassify(query) {
  return request({
    url: '/system/classify/list',
    method: 'get',
    params: query
  })
}

// 查询分类识别日志详细
export function getClassify(uid) {
  return request({
    url: '/system/classify/' + uid,
    method: 'get'
  })
}

// 新增分类识别日志
export function addClassify(data) {
  return request({
    url: '/system/classify',
    method: 'post',
    data: data
  })
}

// 修改分类识别日志
export function updateClassify(data) {
  return request({
    url: '/system/classify',
    method: 'put',
    data: data
  })
}

// 删除分类识别日志
export function delClassify(uid) {
  return request({
    url: '/system/classify/' + uid,
    method: 'delete'
  })
}
