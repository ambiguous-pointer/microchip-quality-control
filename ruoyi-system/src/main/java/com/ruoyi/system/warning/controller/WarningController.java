package com.ruoyi.system.warning.controller;

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
import com.ruoyi.system.warning.domain.Warning;
import com.ruoyi.system.warning.service.IWarningService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 预警查看Controller
 * 
 * @author VentCode
 * @date 2022-12-12
 */
@RestController
@RequestMapping("/system/warning")
public class WarningController extends BaseController
{
    @Autowired
    private IWarningService warningService;

    /**
     * 查询预警查看列表
     */
    @PreAuthorize("@ss.hasPermi('system:warning:list')")
    @GetMapping("/list")
    public TableDataInfo list(Warning warning)
    {
        startPage();
        List<Warning> list = warningService.selectWarningList(warning);
        return getDataTable(list);
    }

    /**
     * 导出预警查看列表
     */
    @PreAuthorize("@ss.hasPermi('system:warning:export')")
    @Log(title = "预警查看", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Warning warning)
    {
        List<Warning> list = warningService.selectWarningList(warning);
        ExcelUtil<Warning> util = new ExcelUtil<Warning>(Warning.class);
        util.exportExcel(response, list, "预警查看数据");
    }

    /**
     * 获取预警查看详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:warning:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(warningService.selectWarningById(id));
    }

    /**
     * 新增预警查看
     */
    @PreAuthorize("@ss.hasPermi('system:warning:add')")
    @Log(title = "预警查看", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Warning warning)
    {
        return toAjax(warningService.insertWarning(warning));
    }

    /**
     * 修改预警查看
     */
    @PreAuthorize("@ss.hasPermi('system:warning:edit')")
    @Log(title = "预警查看", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Warning warning)
    {
        return toAjax(warningService.updateWarning(warning));
    }

    /**
     * 删除预警查看
     */
    @PreAuthorize("@ss.hasPermi('system:warning:remove')")
    @Log(title = "预警查看", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(warningService.deleteWarningByIds(ids));
    }
}
