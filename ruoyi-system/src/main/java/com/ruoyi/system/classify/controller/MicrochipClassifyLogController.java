package com.ruoyi.system.classify.controller;

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
import com.ruoyi.system.classify.domain.MicrochipClassifyLog;
import com.ruoyi.system.classify.service.IMicrochipClassifyLogService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分类识别日志Controller
 * 
 * @author VentCode
 * @date 2022-12-10
 */
@RestController
@RequestMapping("/system/classify")
public class MicrochipClassifyLogController extends BaseController
{
    @Autowired
    private IMicrochipClassifyLogService microchipClassifyLogService;

    /**
     * 查询分类识别日志列表
     */
    @PreAuthorize("@ss.hasPermi('system:classify:list')")
    @GetMapping("/list")
    public TableDataInfo list(MicrochipClassifyLog microchipClassifyLog)
    {
        startPage();
        List<MicrochipClassifyLog> list = microchipClassifyLogService.selectMicrochipClassifyLogList(microchipClassifyLog);
        return getDataTable(list);
    }

    /**
     * 导出分类识别日志列表
     */
    @PreAuthorize("@ss.hasPermi('system:classify:export')")
    @Log(title = "分类识别日志", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MicrochipClassifyLog microchipClassifyLog)
    {
        List<MicrochipClassifyLog> list = microchipClassifyLogService.selectMicrochipClassifyLogList(microchipClassifyLog);
        ExcelUtil<MicrochipClassifyLog> util = new ExcelUtil<MicrochipClassifyLog>(MicrochipClassifyLog.class);
        util.exportExcel(response, list, "分类识别日志数据");
    }

    /**
     * 获取分类识别日志详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:classify:query')")
    @GetMapping(value = "/{uid}")
    public AjaxResult getInfo(@PathVariable("uid") String uid)
    {
        return success(microchipClassifyLogService.selectMicrochipClassifyLogByUid(uid));
    }

    /**
     * 新增分类识别日志
     */
    @PreAuthorize("@ss.hasPermi('system:classify:add')")
    @Log(title = "分类识别日志", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MicrochipClassifyLog microchipClassifyLog)
    {
        return toAjax(microchipClassifyLogService.insertMicrochipClassifyLog(microchipClassifyLog));
    }

    /**
     * 修改分类识别日志
     */
    @PreAuthorize("@ss.hasPermi('system:classify:edit')")
    @Log(title = "分类识别日志", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MicrochipClassifyLog microchipClassifyLog)
    {
        return toAjax(microchipClassifyLogService.updateMicrochipClassifyLog(microchipClassifyLog));
    }

    /**
     * 删除分类识别日志
     */
    @PreAuthorize("@ss.hasPermi('system:classify:remove')")
    @Log(title = "分类识别日志", businessType = BusinessType.DELETE)
	@DeleteMapping("/{uids}")
    public AjaxResult remove(@PathVariable String[] uids)
    {
        return toAjax(microchipClassifyLogService.deleteMicrochipClassifyLogByUids(uids));
    }
}
