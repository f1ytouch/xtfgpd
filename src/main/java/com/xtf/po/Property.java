package com.xtf.po;

public class Property {
    private Integer propertyId;

    private String propertyName;

    private String propertyNum;

    private Float propertyUnitcost;

    private Float propertySum;

    private String propertyUsedate;

    private String propertyStopdate;

    private String propertyState;

    private String propertyChargedate;

    private String propertyPayee;

    private String propertyWay;

    private String propertyRemark;

    public Integer getPropertyId() {
        return propertyId;
    }

    public void setPropertyId(Integer propertyId) {
        this.propertyId = propertyId;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName == null ? null : propertyName.trim();
    }

    public String getPropertyNum() {
        return propertyNum;
    }

    public void setPropertyNum(String propertyNum) {
        this.propertyNum = propertyNum;
    }

    public Float getPropertyUnitcost() {
        return propertyUnitcost;
    }

    public void setPropertyUnitcost(Float propertyUnitcost) {
        this.propertyUnitcost = propertyUnitcost;
    }

    public Float getPropertySum() {
        return propertySum;
    }

    public void setPropertySum(Float propertySum) {
        this.propertySum = propertySum;
    }

    public String getPropertyUsedate() {
        return propertyUsedate;
    }

    public void setPropertyUsedate(String propertyUsedate) {
        this.propertyUsedate = propertyUsedate == null ? null : propertyUsedate.trim();
    }

    public String getPropertyStopdate() {
        return propertyStopdate;
    }

    public void setPropertyStopdate(String propertyStopdate) {
        this.propertyStopdate = propertyStopdate == null ? null : propertyStopdate.trim();
    }

    public String getPropertyState() {
        return propertyState;
    }

    public void setPropertyState(String propertyState) {
        this.propertyState = propertyState == null ? null : propertyState.trim();
    }

    public String getPropertyChargedate() {
        return propertyChargedate;
    }

    public void setPropertyChargedate(String propertyChargedate) {
        this.propertyChargedate = propertyChargedate == null ? null : propertyChargedate.trim();
    }

    public String getPropertyPayee() {
        return propertyPayee;
    }

    public void setPropertyPayee(String propertyPayee) {
        this.propertyPayee = propertyPayee == null ? null : propertyPayee.trim();
    }

    public String getPropertyWay() {
        return propertyWay;
    }

    public void setPropertyWay(String propertyWay) {
        this.propertyWay = propertyWay == null ? null : propertyWay.trim();
    }

    public String getPropertyRemark() {
        return propertyRemark;
    }

    public void setPropertyRemark(String propertyRemark) {
        this.propertyRemark = propertyRemark == null ? null : propertyRemark.trim();
    }
}