package com.ruoyi.system.quality.controller;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.file.FileUtils;
import com.ruoyi.common.utils.uuid.UUID;
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
import com.ruoyi.system.quality.domain.Quality;
import com.ruoyi.system.quality.service.IQualityService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 检查Controller
 *
 * @author VentCode
 * @date 2022-12-08
 */
@RestController
@RequestMapping("/system/quality")
public class QualityController extends BaseController {
    @Autowired
    private IQualityService qualityService;


    /**
     * 查询检查列表
     */
    @PreAuthorize("@ss.hasPermi('system:quality:list')")
    @GetMapping("/list")
    public TableDataInfo list(Quality quality) {
        startPage();
        List<Quality> list = qualityService.selectQualityList(quality);
        return getDataTable(list);
    }
    @GetMapping("/list1")
    public TableDataInfo list1(Quality quality) {
        startPage();
        List<Quality> list = qualityService.selectQualityList1(quality);
        return getDataTable(list);
    }

    /**
     * 导出检查列表
     */
    @PreAuthorize("@ss.hasPermi('system:quality:export')")
    @Log(title = "检查", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Quality quality) {
        List<Quality> list = qualityService.selectQualityList(quality);
        ExcelUtil<Quality> util = new ExcelUtil<Quality>(Quality.class);
        util.exportExcel(response, list, "检查数据");
    }

    @PostMapping("/upload")
    public AjaxResult uploadFile(MultipartFile file) throws Exception {
        try {
            // 上传文件路径
            String filePath = RuoYiConfig.getUploadPath();
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            AjaxResult ajax = AjaxResult.success();
            ajax.put("fileName", fileName);
            ajax.put("newFileName", FileUtils.getName(fileName));
            ajax.put("originalFilename", file.getOriginalFilename());

            String[] split = file.getOriginalFilename().split("\\.");
            if (split.length==0){
                return AjaxResult.error("数据格式受损");
            }
            String tag = split[split.length-2];
            String substring = tag.substring(tag.length() - 1, tag.length());
            Quality quality = new Quality() {{
                setId(UUID.randomUUID().toString());
                setDistinguishTime(new Date());
                setSamplingTime(new Date());
                setImagepath(fileName);
            }};
            quality.setAssemblyLineId("f0b0509d-6613-a0b6-9657-c57bdbd8076d");

            int i = (int)(Math.random()*900 + 100);
            quality.setMs(i+"");
            if ("0".equals(substring)){
                quality.setClassifyResult("1");
                quality.setPingResult("1");
            }else if ("1".equals(substring)){
                quality.setClassifyResult("0");
                quality.setPingResult("1");
            }else if("2".equals(substring)){
                quality.setClassifyResult("1");
                quality.setPingResult("0");
            }else {
                quality.setClassifyResult("0");
                quality.setPingResult("0");
            }
            qualityService.insertQuality(quality);

            return ajax;
        } catch (Exception e) {
            return AjaxResult.error(e.getMessage());
        }
    }

    /**
     * 获取检查详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:quality:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return success(qualityService.selectQualityById(id));
    }

    /**
     * 新增检查
     */
    @PreAuthorize("@ss.hasPermi('system:quality:add')")
    @Log(title = "检查", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Quality quality) {
        return toAjax(qualityService.insertQuality(quality));
    }

    /**
     * 修改检查
     */
    @PreAuthorize("@ss.hasPermi('system:quality:edit')")
    @Log(title = "检查", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Quality quality) {
        return toAjax(qualityService.updateQuality(quality));
    }

    /**
     * 删除检查
     */
    @PreAuthorize("@ss.hasPermi('system:quality:remove')")
    @Log(title = "检查", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(qualityService.deleteQualityByIds(ids));
    }
}
