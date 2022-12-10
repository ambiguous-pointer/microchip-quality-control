package com.ruoyi.system.line.mapper;

import java.util.List;
import com.ruoyi.system.line.domain.AssemblyLine;

/**
 * 产业线管理Mapper接口
 * 
 * @author VentCode
 * @date 2022-12-09
 */
public interface AssemblyLineMapper 
{
    /**
     * 查询产业线管理
     * 
     * @param uId 产业线管理主键
     * @return 产业线管理
     */
    public AssemblyLine selectAssemblyLineByUId(String uId);

    /**
     * 查询产业线管理列表
     * 
     * @param assemblyLine 产业线管理
     * @return 产业线管理集合
     */
    public List<AssemblyLine> selectAssemblyLineList(AssemblyLine assemblyLine);

    /**
     * 新增产业线管理
     * 
     * @param assemblyLine 产业线管理
     * @return 结果
     */
    public int insertAssemblyLine(AssemblyLine assemblyLine);

    /**
     * 修改产业线管理
     * 
     * @param assemblyLine 产业线管理
     * @return 结果
     */
    public int updateAssemblyLine(AssemblyLine assemblyLine);

    /**
     * 删除产业线管理
     * 
     * @param uId 产业线管理主键
     * @return 结果
     */
    public int deleteAssemblyLineByUId(String uId);

    /**
     * 批量删除产业线管理
     * 
     * @param uIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssemblyLineByUIds(String[] uIds);
}
