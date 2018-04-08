package com.xtf.po;

public class Energy {
    private Integer energyId;

    private Integer energyNum;

    private Float energyUnitcost;

    private Float energySum;

    private String energyUsedate;

    private String energyStopdate;

    private String energyState;

    private String energyCompany;

    private String energyRemark;

    public Integer getEnergyId() {
        return energyId;
    }

    public void setEnergyId(Integer energyId) {
        this.energyId = energyId;
    }

    public Integer getEnergyNum() {
        return energyNum;
    }

    public void setEnergyNum(Integer energyNum) {
        this.energyNum = energyNum;
    }

    public Float getEnergyUnitcost() {
        return energyUnitcost;
    }

    public void setEnergyUnitcost(Float energyUnitcost) {
        this.energyUnitcost = energyUnitcost;
    }

    public Float getEnergySum() {
        return energySum;
    }

    public void setEnergySum(Float energySum) {
        this.energySum = energySum;
    }

    public String getEnergyUsedate() {
        return energyUsedate;
    }

    public void setEnergyUsedate(String energyUsedate) {
        this.energyUsedate = energyUsedate == null ? null : energyUsedate.trim();
    }

    public String getEnergyStopdate() {
        return energyStopdate;
    }

    public void setEnergyStopdate(String energyStopdate) {
        this.energyStopdate = energyStopdate == null ? null : energyStopdate.trim();
    }

    public String getEnergyState() {
        return energyState;
    }

    public void setEnergyState(String energyState) {
        this.energyState = energyState == null ? null : energyState.trim();
    }

    public String getEnergyCompany() {
        return energyCompany;
    }

    public void setEnergyCompany(String energyCompany) {
        this.energyCompany = energyCompany == null ? null : energyCompany.trim();
    }

    public String getEnergyRemark() {
        return energyRemark;
    }

    public void setEnergyRemark(String energyRemark) {
        this.energyRemark = energyRemark == null ? null : energyRemark.trim();
    }
}