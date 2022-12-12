package com.ruoyi.system.quality.service;

import java.util.List;
import com.ruoyi.system.quality.domain.Quality;

/**
 * 检查Service接口
 * 
 * @author VentCode
 * @date 2022-12-08
 */
public interface IQualityService 
{
    /**
     * 查询检查
     * 
     * @param id 检查主键
     * @return 检查
     */
    public Quality selectQualityById(String id);

    /**
     * 查询检查列表
     * 
     * @param quality 检查
     * @return 检查集合
     */
    public List<Quality> selectQualityList(Quality quality);
    public List<Quality> selectQualityList1(Quality quality);

    /**
     * 新增检查
     * 
     * @param quality 检查
     * @return 结果
     */
    public int insertQuality(Quality quality);

    /**
     * 修改检查
     * 
     * @param quality 检查
     * @return 结果
     */
    public int updateQuality(Quality quality);

    /**
     * 批量删除检查
     * 
     * @param ids 需要删除的检查主键集合
     * @return 结果
     */
    public int deleteQualityByIds(String[] ids);

    /**
     * 删除检查信息
     * 
     * @param id 检查主键
     * @return 结果
     */
    public int deleteQualityById(String id);
}
