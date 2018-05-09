package com.xtf.po;

public class Carport {
    private Integer carportId;

    private String carportNum;

    private String carportType;

    private String carportArea;

    private String carportPlatenum;

    private String carportUsedate;

    private String carportStopdate;

    private String carportCellphone;

    private Float carportCost;

    private String carportRemark;

    public Integer getCarportId() {
        return carportId;
    }

    public void setCarportId(Integer carportId) {
        this.carportId = carportId;
    }

    public String getCarportNum() {
        return carportNum;
    }

    public void setCarportNum(String carportNum) {
        this.carportNum = carportNum;
    }

    public String getCarportType() {
        return carportType;
    }

    public void setCarportType(String carportType) {
        this.carportType = carportType == null ? null : carportType.trim();
    }

    public String getCarportArea() {
        return carportArea;
    }

    public void setCarportArea(String carportArea) {
        this.carportArea = carportArea == null ? null : carportArea.trim();
    }

    public String getCarportPlatenum() {
        return carportPlatenum;
    }

    public void setCarportPlatenum(String carportPlatenum) {
        this.carportPlatenum = carportPlatenum == null ? null : carportPlatenum.trim();
    }

    public String getCarportUsedate() {
        return carportUsedate;
    }

    public void setCarportUsedate(String carportUsedate) {
        this.carportUsedate = carportUsedate == null ? null : carportUsedate.trim();
    }

    public String getCarportStopdate() {
        return carportStopdate;
    }

    public void setCarportStopdate(String carportStopdate) {
        this.carportStopdate = carportStopdate == null ? null : carportStopdate.trim();
    }

    public String getCarportCellphone() {
        return carportCellphone;
    }

    public void setCarportCellphone(String carportCellphone) {
        this.carportCellphone = carportCellphone == null ? null : carportCellphone.trim();
    }

    public Float getCarportCost() {
        return carportCost;
    }

    public void setCarportCost(Float carportCost) {
        this.carportCost = carportCost;
    }

    public String getCarportRemark() {
        return carportRemark;
    }

    public void setCarportRemark(String carportRemark) {
        this.carportRemark = carportRemark == null ? null : carportRemark.trim();
    }
}