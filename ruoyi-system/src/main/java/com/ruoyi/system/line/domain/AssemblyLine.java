package com.ruoyi.system.line.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 产业线管理对象 assembly_line
 * 
 * @author VentCode
 * @date 2022-12-09
 */
public class AssemblyLine extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** UID */
    private String uId;

    /** 流水线编号 */
    @Excel(name = "流水线编号")
    private String aLCode;

    /** 流水线名 */
    @Excel(name = "流水线名")
    private String aLName;

    public void setuId(String uId) 
    {
        this.uId = uId;
    }

    public String getuId() 
    {
        return uId;
    }
    public void setaLCode(String aLCode) 
    {
        this.aLCode = aLCode;
    }

    public String getaLCode() 
    {
        return aLCode;
    }
    public void setaLName(String aLName) 
    {
        this.aLName = aLName;
    }

    public String getaLName() 
    {
        return aLName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("uId", getuId())
            .append("aLCode", getaLCode())
            .append("aLName", getaLName())
            .toString();
    }
}
