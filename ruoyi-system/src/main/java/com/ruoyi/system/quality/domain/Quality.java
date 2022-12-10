package com.ruoyi.system.quality.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.system.line.domain.AssemblyLine;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 检查对象 quality
 * 
 * @author VentCode
 * @date 2022-12-08
 */
public class Quality extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private String id;

    /** 流水线id */
    @Excel(name = "流水线id")
    private String assemblyLineId;

    /** 采样时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "采样时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date samplingTime;

    /** 识别时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "识别时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date distinguishTime;

    /** 引角结果（0未检测 1 成功 2失败） */
    @Excel(name = "引角结果", readConverterExp = "0=未检测,1=,成=功,2=失败")
    private String pingResult;

    /** 划痕及结果（0未检测 1 成功 2失败） */
    @Excel(name = "划痕及结果", readConverterExp = "0=未检测,1=,成=功,2=失败")
    private String classifyResult;

    /** 图片数据地址 */
    @Excel(name = "图片数据地址")
    private String imagepath;

    private AssemblyLine assemblyLine;

    private String ms;

    public String getMs() {
        return ms;
    }

    public void setMs(String ms) {
        this.ms = ms;
    }

    public void setId(String id)
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setAssemblyLineId(String assemblyLineId) 
    {
        this.assemblyLineId = assemblyLineId;
    }

    public String getAssemblyLineId() 
    {
        return assemblyLineId;
    }
    public void setSamplingTime(Date samplingTime) 
    {
        this.samplingTime = samplingTime;
    }

    public Date getSamplingTime() 
    {
        return samplingTime;
    }
    public void setDistinguishTime(Date distinguishTime) 
    {
        this.distinguishTime = distinguishTime;
    }

    public Date getDistinguishTime() 
    {
        return distinguishTime;
    }
    public void setPingResult(String pingResult) 
    {
        this.pingResult = pingResult;
    }

    public String getPingResult() 
    {
        return pingResult;
    }
    public void setClassifyResult(String classifyResult) 
    {
        this.classifyResult = classifyResult;
    }

    public String getClassifyResult() 
    {
        return classifyResult;
    }
    public void setImagepath(String imagepath) 
    {
        this.imagepath = imagepath;
    }

    public String getImagepath() 
    {
        return imagepath;
    }

    public AssemblyLine getAssemblyLine() {
        return assemblyLine;
    }

    public void setAssemblyLine(AssemblyLine assemblyLine) {
        this.assemblyLine = assemblyLine;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("assemblyLineId", getAssemblyLineId())
            .append("samplingTime", getSamplingTime())
            .append("distinguishTime", getDistinguishTime())
            .append("pingResult", getPingResult())
            .append("classifyResult", getClassifyResult())
            .append("imagepath", getImagepath())
            .toString();
    }
}
