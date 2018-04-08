package com.xtf.po;

public class Water {
    private Integer waterId;

    private Integer waterNum;

    private Float waterUnitcost;

    private Float waterSum;

    private String waterUsedate;

    private String waterStopdate;

    private String waterCompany;

    private String waterState;

    private String waterRemark;

    public Integer getWaterId() {
        return waterId;
    }

    public void setWaterId(Integer waterId) {
        this.waterId = waterId;
    }

    public Integer getWaterNum() {
        return waterNum;
    }

    public void setWaterNum(Integer waterNum) {
        this.waterNum = waterNum;
    }

    public Float getWaterUnitcost() {
        return waterUnitcost;
    }

    public void setWaterUnitcost(Float waterUnitcost) {
        this.waterUnitcost = waterUnitcost;
    }

    public Float getWaterSum() {
        return waterSum;
    }

    public void setWaterSum(Float waterSum) {
        this.waterSum = waterSum;
    }

    public String getWaterUsedate() {
        return waterUsedate;
    }

    public void setWaterUsedate(String waterUsedate) {
        this.waterUsedate = waterUsedate == null ? null : waterUsedate.trim();
    }

    public String getWaterStopdate() {
        return waterStopdate;
    }

    public void setWaterStopdate(String waterStopdate) {
        this.waterStopdate = waterStopdate == null ? null : waterStopdate.trim();
    }

    public String getWaterCompany() {
        return waterCompany;
    }

    public void setWaterCompany(String waterCompany) {
        this.waterCompany = waterCompany == null ? null : waterCompany.trim();
    }

    public String getWaterState() {
        return waterState;
    }

    public void setWaterState(String waterState) {
        this.waterState = waterState == null ? null : waterState.trim();
    }

    public String getWaterRemark() {
        return waterRemark;
    }

    public void setWaterRemark(String waterRemark) {
        this.waterRemark = waterRemark == null ? null : waterRemark.trim();
    }
}