package com.ruoyi.system.line.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.line.domain.AssemblyLine;
import com.ruoyi.system.line.service.IAssemblyLineService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 产业线管理Controller
 * 
 * @author VentCode
 * @date 2022-12-09
 */
@RestController
@RequestMapping("/system/line")
public class AssemblyLineController extends BaseController
{
    @Autowired
    private IAssemblyLineService assemblyLineService;

    /**
     * 查询产业线管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:line:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssemblyLine assemblyLine)
    {
        startPage();
        List<AssemblyLine> list = assemblyLineService.selectAssemblyLineList(assemblyLine);
        return getDataTable(list);
    }

    /**
     * 导出产业线管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:line:export')")
    @Log(title = "产业线管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssemblyLine assemblyLine)
    {
        List<AssemblyLine> list = assemblyLineService.selectAssemblyLineList(assemblyLine);
        ExcelUtil<AssemblyLine> util = new ExcelUtil<AssemblyLine>(AssemblyLine.class);
        util.exportExcel(response, list, "产业线管理数据");
    }

    /**
     * 获取产业线管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:line:query')")
    @GetMapping(value = "/{uId}")
    public AjaxResult getInfo(@PathVariable("uId") String uId)
    {
        return success(assemblyLineService.selectAssemblyLineByUId(uId));
    }

    /**
     * 新增产业线管理
     */
    @PreAuthorize("@ss.hasPermi('system:line:add')")
    @Log(title = "产业线管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssemblyLine assemblyLine)
    {
        return toAjax(assemblyLineService.insertAssemblyLine(assemblyLine));
    }

    /**
     * 修改产业线管理
     */
    @PreAuthorize("@ss.hasPermi('system:line:edit')")
    @Log(title = "产业线管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssemblyLine assemblyLine)
    {
        return toAjax(assemblyLineService.updateAssemblyLine(assemblyLine));
    }

    /**
     * 删除产业线管理
     */
    @PreAuthorize("@ss.hasPermi('system:line:remove')")
    @Log(title = "产业线管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{uIds}")
    public AjaxResult remove(@PathVariable String[] uIds)
    {
        return toAjax(assemblyLineService.deleteAssemblyLineByUIds(uIds));
    }
}
