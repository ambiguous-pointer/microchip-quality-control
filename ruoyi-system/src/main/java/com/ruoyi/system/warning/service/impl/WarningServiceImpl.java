package com.ruoyi.system.warning.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.warning.mapper.WarningMapper;
import com.ruoyi.system.warning.domain.Warning;
import com.ruoyi.system.warning.service.IWarningService;

/**
 * 预警查看Service业务层处理
 * 
 * @author VentCode
 * @date 2022-12-12
 */
@Service
public class WarningServiceImpl implements IWarningService 
{
    @Autowired
    private WarningMapper warningMapper;

    /**
     * 查询预警查看
     * 
     * @param id 预警查看主键
     * @return 预警查看
     */
    @Override
    public Warning selectWarningById(Long id)
    {
        return warningMapper.selectWarningById(id);
    }

    /**
     * 查询预警查看列表
     * 
     * @param warning 预警查看
     * @return 预警查看
     */
    @Override
    public List<Warning> selectWarningList(Warning warning)
    {
        return warningMapper.selectWarningList(warning);
    }

    /**
     * 新增预警查看
     * 
     * @param warning 预警查看
     * @return 结果
     */
    @Override
    public int insertWarning(Warning warning)
    {
        return warningMapper.insertWarning(warning);
    }

    /**
     * 修改预警查看
     * 
     * @param warning 预警查看
     * @return 结果
     */
    @Override
    public int updateWarning(Warning warning)
    {
        return warningMapper.updateWarning(warning);
    }

    /**
     * 批量删除预警查看
     * 
     * @param ids 需要删除的预警查看主键
     * @return 结果
     */
    @Override
    public int deleteWarningByIds(Long[] ids)
    {
        return warningMapper.deleteWarningByIds(ids);
    }

    /**
     * 删除预警查看信息
     * 
     * @param id 预警查看主键
     * @return 结果
     */
    @Override
    public int deleteWarningById(Long id)
    {
        return warningMapper.deleteWarningById(id);
    }
}
