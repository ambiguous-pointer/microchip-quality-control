package com.ruoyi.system.classify.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.classify.mapper.MicrochipClassifyLogMapper;
import com.ruoyi.system.classify.domain.MicrochipClassifyLog;
import com.ruoyi.system.classify.service.IMicrochipClassifyLogService;

/**
 * 分类识别日志Service业务层处理
 * 
 * @author VentCode
 * @date 2022-12-10
 */
@Service
public class MicrochipClassifyLogServiceImpl implements IMicrochipClassifyLogService 
{
    @Autowired
    private MicrochipClassifyLogMapper microchipClassifyLogMapper;

    /**
     * 查询分类识别日志
     * 
     * @param uid 分类识别日志主键
     * @return 分类识别日志
     */
    @Override
    public MicrochipClassifyLog selectMicrochipClassifyLogByUid(String uid)
    {
        return microchipClassifyLogMapper.selectMicrochipClassifyLogByUid(uid);
    }

    /**
     * 查询分类识别日志列表
     * 
     * @param microchipClassifyLog 分类识别日志
     * @return 分类识别日志
     */
    @Override
    public List<MicrochipClassifyLog> selectMicrochipClassifyLogList(MicrochipClassifyLog microchipClassifyLog)
    {
        return microchipClassifyLogMapper.selectMicrochipClassifyLogList(microchipClassifyLog);
    }

    /**
     * 新增分类识别日志
     * 
     * @param microchipClassifyLog 分类识别日志
     * @return 结果
     */
    @Override
    public int insertMicrochipClassifyLog(MicrochipClassifyLog microchipClassifyLog)
    {
        microchipClassifyLog.setCreateTime(DateUtils.getNowDate());
        return microchipClassifyLogMapper.insertMicrochipClassifyLog(microchipClassifyLog);
    }

    /**
     * 修改分类识别日志
     * 
     * @param microchipClassifyLog 分类识别日志
     * @return 结果
     */
    @Override
    public int updateMicrochipClassifyLog(MicrochipClassifyLog microchipClassifyLog)
    {
        return microchipClassifyLogMapper.updateMicrochipClassifyLog(microchipClassifyLog);
    }

    /**
     * 批量删除分类识别日志
     * 
     * @param uids 需要删除的分类识别日志主键
     * @return 结果
     */
    @Override
    public int deleteMicrochipClassifyLogByUids(String[] uids)
    {
        return microchipClassifyLogMapper.deleteMicrochipClassifyLogByUids(uids);
    }

    /**
     * 删除分类识别日志信息
     * 
     * @param uid 分类识别日志主键
     * @return 结果
     */
    @Override
    public int deleteMicrochipClassifyLogByUid(String uid)
    {
        return microchipClassifyLogMapper.deleteMicrochipClassifyLogByUid(uid);
    }
}
