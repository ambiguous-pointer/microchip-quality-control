package com.ruoyi.system.classify.service;

import java.util.List;
import com.ruoyi.system.classify.domain.MicrochipClassifyLog;

/**
 * 分类识别日志Service接口
 * 
 * @author VentCode
 * @date 2022-12-10
 */
public interface IMicrochipClassifyLogService 
{
    /**
     * 查询分类识别日志
     * 
     * @param uid 分类识别日志主键
     * @return 分类识别日志
     */
    public MicrochipClassifyLog selectMicrochipClassifyLogByUid(String uid);

    /**
     * 查询分类识别日志列表
     * 
     * @param microchipClassifyLog 分类识别日志
     * @return 分类识别日志集合
     */
    public List<MicrochipClassifyLog> selectMicrochipClassifyLogList(MicrochipClassifyLog microchipClassifyLog);

    /**
     * 新增分类识别日志
     * 
     * @param microchipClassifyLog 分类识别日志
     * @return 结果
     */
    public int insertMicrochipClassifyLog(MicrochipClassifyLog microchipClassifyLog);

    /**
     * 修改分类识别日志
     * 
     * @param microchipClassifyLog 分类识别日志
     * @return 结果
     */
    public int updateMicrochipClassifyLog(MicrochipClassifyLog microchipClassifyLog);

    /**
     * 批量删除分类识别日志
     * 
     * @param uids 需要删除的分类识别日志主键集合
     * @return 结果
     */
    public int deleteMicrochipClassifyLogByUids(String[] uids);

    /**
     * 删除分类识别日志信息
     * 
     * @param uid 分类识别日志主键
     * @return 结果
     */
    public int deleteMicrochipClassifyLogByUid(String uid);
}
