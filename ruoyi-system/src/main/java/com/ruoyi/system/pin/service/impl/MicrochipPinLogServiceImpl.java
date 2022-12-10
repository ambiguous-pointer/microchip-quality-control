package com.ruoyi.system.pin.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.pin.mapper.MicrochipPinLogMapper;
import com.ruoyi.system.pin.domain.MicrochipPinLog;
import com.ruoyi.system.pin.service.IMicrochipPinLogService;

/**
 * 针脚检测日志Service业务层处理
 * 
 * @author VentCode
 * @date 2022-12-10
 */
@Service
public class MicrochipPinLogServiceImpl implements IMicrochipPinLogService 
{
    @Autowired
    private MicrochipPinLogMapper microchipPinLogMapper;

    /**
     * 查询针脚检测日志
     * 
     * @param uid 针脚检测日志主键
     * @return 针脚检测日志
     */
    @Override
    public MicrochipPinLog selectMicrochipPinLogByUid(String uid)
    {
        return microchipPinLogMapper.selectMicrochipPinLogByUid(uid);
    }

    /**
     * 查询针脚检测日志列表
     * 
     * @param microchipPinLog 针脚检测日志
     * @return 针脚检测日志
     */
    @Override
    public List<MicrochipPinLog> selectMicrochipPinLogList(MicrochipPinLog microchipPinLog)
    {
        return microchipPinLogMapper.selectMicrochipPinLogList(microchipPinLog);
    }

    /**
     * 新增针脚检测日志
     * 
     * @param microchipPinLog 针脚检测日志
     * @return 结果
     */
    @Override
    public int insertMicrochipPinLog(MicrochipPinLog microchipPinLog)
    {
        microchipPinLog.setCreateTime(DateUtils.getNowDate());
        return microchipPinLogMapper.insertMicrochipPinLog(microchipPinLog);
    }

    /**
     * 修改针脚检测日志
     * 
     * @param microchipPinLog 针脚检测日志
     * @return 结果
     */
    @Override
    public int updateMicrochipPinLog(MicrochipPinLog microchipPinLog)
    {
        return microchipPinLogMapper.updateMicrochipPinLog(microchipPinLog);
    }

    /**
     * 批量删除针脚检测日志
     * 
     * @param uids 需要删除的针脚检测日志主键
     * @return 结果
     */
    @Override
    public int deleteMicrochipPinLogByUids(String[] uids)
    {
        return microchipPinLogMapper.deleteMicrochipPinLogByUids(uids);
    }

    /**
     * 删除针脚检测日志信息
     * 
     * @param uid 针脚检测日志主键
     * @return 结果
     */
    @Override
    public int deleteMicrochipPinLogByUid(String uid)
    {
        return microchipPinLogMapper.deleteMicrochipPinLogByUid(uid);
    }
}
