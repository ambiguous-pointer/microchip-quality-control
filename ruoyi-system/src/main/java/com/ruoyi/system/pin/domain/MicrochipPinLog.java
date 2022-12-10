package com.ruoyi.system.pin.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 针脚检测日志对象 microchip_pin_log
 * 
 * @author VentCode
 * @date 2022-12-10
 */
public class MicrochipPinLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** UID */
    private String uid;

    /** 调用阈值 */
    @Excel(name = "调用阈值")
    private String threshold;

    /** 返回结果 */
    @Excel(name = "返回结果")
    private String result;

    /** 分类或检测的置信度 */
    @Excel(name = "分类或检测的置信度")
    private String confidence;

    /** 分类或检测的类别 */
    @Excel(name = "分类或检测的类别")
    private Long index;

    /** 分类或检测的类别 */
    @Excel(name = "分类或检测的类别")
    private String label;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long modelkind;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String name;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String location;

    /** 检测id */
    @Excel(name = "检测id")
    private String qualityId;

    public void setUid(String uid) 
    {
        this.uid = uid;
    }

    public String getUid() 
    {
        return uid;
    }
    public void setThreshold(String threshold) 
    {
        this.threshold = threshold;
    }

    public String getThreshold() 
    {
        return threshold;
    }
    public void setResult(String result) 
    {
        this.result = result;
    }

    public String getResult() 
    {
        return result;
    }
    public void setConfidence(String confidence) 
    {
        this.confidence = confidence;
    }

    public String getConfidence() 
    {
        return confidence;
    }
    public void setIndex(Long index) 
    {
        this.index = index;
    }

    public Long getIndex() 
    {
        return index;
    }
    public void setLabel(String label) 
    {
        this.label = label;
    }

    public String getLabel() 
    {
        return label;
    }
    public void setModelkind(Long modelkind) 
    {
        this.modelkind = modelkind;
    }

    public Long getModelkind() 
    {
        return modelkind;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
    }
    public void setQualityId(String qualityId) 
    {
        this.qualityId = qualityId;
    }

    public String getQualityId() 
    {
        return qualityId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("uid", getUid())
            .append("threshold", getThreshold())
            .append("result", getResult())
            .append("confidence", getConfidence())
            .append("index", getIndex())
            .append("label", getLabel())
            .append("modelkind", getModelkind())
            .append("name", getName())
            .append("createTime", getCreateTime())
            .append("location", getLocation())
            .append("qualityId", getQualityId())
            .toString();
    }
}
