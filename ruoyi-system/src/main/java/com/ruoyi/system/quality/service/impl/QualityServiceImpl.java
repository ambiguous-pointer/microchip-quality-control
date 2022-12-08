package com.ruoyi.system.quality.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.quality.mapper.QualityMapper;
import com.ruoyi.system.quality.domain.Quality;
import com.ruoyi.system.quality.service.IQualityService;

/**
 * 检查Service业务层处理
 * 
 * @author VentCode
 * @date 2022-12-08
 */
@Service
public class QualityServiceImpl implements IQualityService 
{
    @Autowired
    private QualityMapper qualityMapper;

    /**
     * 查询检查
     * 
     * @param id 检查主键
     * @return 检查
     */
    @Override
    public Quality selectQualityById(String id)
    {
        return qualityMapper.selectQualityById(id);
    }

    /**
     * 查询检查列表
     * 
     * @param quality 检查
     * @return 检查
     */
    @Override
    public List<Quality> selectQualityList(Quality quality)
    {
        return qualityMapper.selectQualityList(quality);
    }

    /**
     * 新增检查
     * 
     * @param quality 检查
     * @return 结果
     */
    @Override
    public int insertQuality(Quality quality)
    {
        return qualityMapper.insertQuality(quality);
    }

    /**
     * 修改检查
     * 
     * @param quality 检查
     * @return 结果
     */
    @Override
    public int updateQuality(Quality quality)
    {
        return qualityMapper.updateQuality(quality);
    }

    /**
     * 批量删除检查
     * 
     * @param ids 需要删除的检查主键
     * @return 结果
     */
    @Override
    public int deleteQualityByIds(String[] ids)
    {
        return qualityMapper.deleteQualityByIds(ids);
    }

    /**
     * 删除检查信息
     * 
     * @param id 检查主键
     * @return 结果
     */
    @Override
    public int deleteQualityById(String id)
    {
        return qualityMapper.deleteQualityById(id);
    }
}
