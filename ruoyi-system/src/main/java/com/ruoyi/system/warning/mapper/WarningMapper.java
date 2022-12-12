package com.ruoyi.system.warning.mapper;

import java.util.List;
import com.ruoyi.system.warning.domain.Warning;

/**
 * 预警查看Mapper接口
 * 
 * @author VentCode
 * @date 2022-12-12
 */
public interface WarningMapper 
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
     * 删除预警查看
     * 
     * @param id 预警查看主键
     * @return 结果
     */
    public int deleteWarningById(Long id);

    /**
     * 批量删除预警查看
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteWarningByIds(Long[] ids);
}
