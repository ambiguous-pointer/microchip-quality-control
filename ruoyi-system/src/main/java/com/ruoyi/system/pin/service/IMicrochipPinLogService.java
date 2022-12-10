package com.ruoyi.system.pin.service;

import java.util.List;
import com.ruoyi.system.pin.domain.MicrochipPinLog;

/**
 * 针脚检测日志Service接口
 * 
 * @author VentCode
 * @date 2022-12-10
 */
public interface IMicrochipPinLogService 
{
    /**
     * 查询针脚检测日志
     * 
     * @param uid 针脚检测日志主键
     * @return 针脚检测日志
     */
    public MicrochipPinLog selectMicrochipPinLogByUid(String uid);

    /**
     * 查询针脚检测日志列表
     * 
     * @param microchipPinLog 针脚检测日志
     * @return 针脚检测日志集合
     */
    public List<MicrochipPinLog> selectMicrochipPinLogList(MicrochipPinLog microchipPinLog);

    /**
     * 新增针脚检测日志
     * 
     * @param microchipPinLog 针脚检测日志
     * @return 结果
     */
    public int insertMicrochipPinLog(MicrochipPinLog microchipPinLog);

    /**
     * 修改针脚检测日志
     * 
     * @param microchipPinLog 针脚检测日志
     * @return 结果
     */
    public int updateMicrochipPinLog(MicrochipPinLog microchipPinLog);

    /**
     * 批量删除针脚检测日志
     * 
     * @param uids 需要删除的针脚检测日志主键集合
     * @return 结果
     */
    public int deleteMicrochipPinLogByUids(String[] uids);

    /**
     * 删除针脚检测日志信息
     * 
     * @param uid 针脚检测日志主键
     * @return 结果
     */
    public int deleteMicrochipPinLogByUid(String uid);
}
