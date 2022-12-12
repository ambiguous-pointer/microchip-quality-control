package com.ruoyi.system.warning.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 预警查看对象 warning
 * 
 * @author VentCode
 * @date 2022-12-12
 */
public class Warning extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** UID */
    private Long id;

    /** 产线编号 */
    @Excel(name = "产线编号")
    private String lineNo;

    /** 预警名称 */
    @Excel(name = "预警名称")
    private String warningName;

    /** 预警时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "预警时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date warningTime;

    /** 负责人邮箱 */
    @Excel(name = "负责人邮箱")
    private String warningEmail;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setLineNo(String lineNo) 
    {
        this.lineNo = lineNo;
    }

    public String getLineNo() 
    {
        return lineNo;
    }
    public void setWarningName(String warningName) 
    {
        this.warningName = warningName;
    }

    public String getWarningName() 
    {
        return warningName;
    }
    public void setWarningTime(Date warningTime) 
    {
        this.warningTime = warningTime;
    }

    public Date getWarningTime() 
    {
        return warningTime;
    }
    public void setWarningEmail(String warningEmail) 
    {
        this.warningEmail = warningEmail;
    }

    public String getWarningEmail() 
    {
        return warningEmail;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("lineNo", getLineNo())
            .append("warningName", getWarningName())
            .append("warningTime", getWarningTime())
            .append("warningEmail", getWarningEmail())
            .toString();
    }
}
