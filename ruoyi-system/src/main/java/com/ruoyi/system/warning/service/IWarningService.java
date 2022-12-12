package com.ruoyi.system.warning.service;

import java.util.List;
import com.ruoyi.system.warning.domain.Warning;

/**
 * 预警查看Service接口
 * 
 * @author VentCode
 * @date 2022-12-12
 */
public interface IWarningService 
{
    /**
     * 查询预警查看
     * 
     * @param id 预警查看主键
     * @return 预警查看
     */
    public Warning selectWarningById(Long id);

    /**
     * 查询预警查看列表
     * 
     * @param warning 预警查看
     * @return 预警查看集合
     */
    public List<Warning> selectWarningList(Warning warning);

    /**
     * 新增预警查看
     * 
     * @param warning 预警查看
     * @return 结果
     */
    public int insertWarning(Warning warning);

    /**
     * 修改预警查看
     * 
     * @param warning 预警查看
     * @return 结果
     */
    public int updateWarning(Warning warning);

    /**
     * 批量删除预警查看
     * 
     * @param ids 需要删除的预警查看主键集合
     * @return 结果
     */
    public int deleteWarningByIds(Long[] ids);

    /**
     * 删除预警查看信息
     * 
     * @param id 预警查看主键
     * @return 结果
     */
    public int deleteWarningById(Long id);
}
