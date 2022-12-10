package com.ruoyi.system.line.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.line.mapper.AssemblyLineMapper;
import com.ruoyi.system.line.domain.AssemblyLine;
import com.ruoyi.system.line.service.IAssemblyLineService;

/**
 * 产业线管理Service业务层处理
 * 
 * @author VentCode
 * @date 2022-12-09
 */
@Service
public class AssemblyLineServiceImpl implements IAssemblyLineService 
{
    @Autowired
    private AssemblyLineMapper assemblyLineMapper;

    /**
     * 查询产业线管理
     * 
     * @param uId 产业线管理主键
     * @return 产业线管理
     */
    @Override
    public AssemblyLine selectAssemblyLineByUId(String uId)
    {
        return assemblyLineMapper.selectAssemblyLineByUId(uId);
    }

    /**
     * 查询产业线管理列表
     * 
     * @param assemblyLine 产业线管理
     * @return 产业线管理
     */
    @Override
    public List<AssemblyLine> selectAssemblyLineList(AssemblyLine assemblyLine)
    {
        return assemblyLineMapper.selectAssemblyLineList(assemblyLine);
    }

    /**
     * 新增产业线管理
     * 
     * @param assemblyLine 产业线管理
     * @return 结果
     */
    @Override
    public int insertAssemblyLine(AssemblyLine assemblyLine)
    {
        return assemblyLineMapper.insertAssemblyLine(assemblyLine);
    }

    /**
     * 修改产业线管理
     * 
     * @param assemblyLine 产业线管理
     * @return 结果
     */
    @Override
    public int updateAssemblyLine(AssemblyLine assemblyLine)
    {
        return assemblyLineMapper.updateAssemblyLine(assemblyLine);
    }

    /**
     * 批量删除产业线管理
     * 
     * @param uIds 需要删除的产业线管理主键
     * @return 结果
     */
    @Override
    public int deleteAssemblyLineByUIds(String[] uIds)
    {
        return assemblyLineMapper.deleteAssemblyLineByUIds(uIds);
    }

    /**
     * 删除产业线管理信息
     * 
     * @param uId 产业线管理主键
     * @return 结果
     */
    @Override
    public int deleteAssemblyLineByUId(String uId)
    {
        return assemblyLineMapper.deleteAssemblyLineByUId(uId);
    }
}
