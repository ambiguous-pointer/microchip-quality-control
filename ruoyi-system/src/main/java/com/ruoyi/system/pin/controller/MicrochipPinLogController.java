package com.ruoyi.system.pin.controller;

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
import com.ruoyi.system.pin.domain.MicrochipPinLog;
import com.ruoyi.system.pin.service.IMicrochipPinLogService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 针脚检测日志Controller
 * 
 * @author VentCode
 * @date 2022-12-10
 */
@RestController
@RequestMapping("/system/pin")
public class MicrochipPinLogController extends BaseController
{
    @Autowired
    private IMicrochipPinLogService microchipPinLogService;

    /**
     * 查询针脚检测日志列表
     */
    @PreAuthorize("@ss.hasPermi('system:pin:list')")
    @GetMapping("/list")
    public TableDataInfo list(MicrochipPinLog microchipPinLog)
    {
        startPage();
        List<MicrochipPinLog> list = microchipPinLogService.selectMicrochipPinLogList(microchipPinLog);
        return getDataTable(list);
    }

    /**
     * 导出针脚检测日志列表
     */
    @PreAuthorize("@ss.hasPermi('system:pin:export')")
    @Log(title = "针脚检测日志", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MicrochipPinLog microchipPinLog)
    {
        List<MicrochipPinLog> list = microchipPinLogService.selectMicrochipPinLogList(microchipPinLog);
        ExcelUtil<MicrochipPinLog> util = new ExcelUtil<MicrochipPinLog>(MicrochipPinLog.class);
        util.exportExcel(response, list, "针脚检测日志数据");
    }

    /**
     * 获取针脚检测日志详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:pin:query')")
    @GetMapping(value = "/{uid}")
    public AjaxResult getInfo(@PathVariable("uid") String uid)
    {
        return success(microchipPinLogService.selectMicrochipPinLogByUid(uid));
    }

    /**
     * 新增针脚检测日志
     */
    @PreAuthorize("@ss.hasPermi('system:pin:add')")
    @Log(title = "针脚检测日志", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MicrochipPinLog microchipPinLog)
    {
        return toAjax(microchipPinLogService.insertMicrochipPinLog(microchipPinLog));
    }

    /**
     * 修改针脚检测日志
     */
    @PreAuthorize("@ss.hasPermi('system:pin:edit')")
    @Log(title = "针脚检测日志", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MicrochipPinLog microchipPinLog)
    {
        return toAjax(microchipPinLogService.updateMicrochipPinLog(microchipPinLog));
    }

    /**
     * 删除针脚检测日志
     */
    @PreAuthorize("@ss.hasPermi('system:pin:remove')")
    @Log(title = "针脚检测日志", businessType = BusinessType.DELETE)
	@DeleteMapping("/{uids}")
    public AjaxResult remove(@PathVariable String[] uids)
    {
        return toAjax(microchipPinLogService.deleteMicrochipPinLogByUids(uids));
    }
}
