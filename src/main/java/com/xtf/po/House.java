package com.xtf.po;

public class House {
    private String houseId;

    private Integer houseNum;

    private String houseLoudonghao;

    private String houseDanyuanhao;

    private String houseType;

    private String houseArea;

    private String houseState;

    private String houseRemark;

    public String getHouseId() {
        return houseId;
    }

    public void setHouseId(String houseId) {
        this.houseId = houseId;
    }

    public Integer getHouseNum() {
        return houseNum;
    }

    public void setHouseNum(Integer houseNum) {
        this.houseNum = houseNum;
    }

    public String getHouseLoudonghao() {
        return houseLoudonghao;
    }

    public void setHouseLoudonghao(String houseLoudonghao) {
        this.houseLoudonghao = houseLoudonghao == null ? null : houseLoudonghao.trim();
    }

    public String getHouseDanyuanhao() {
        return houseDanyuanhao;
    }

    public void setHouseDanyuanhao(String houseDanyuanhao) {
        this.houseDanyuanhao = houseDanyuanhao == null ? null : houseDanyuanhao.trim();
    }

    public String getHouseType() {
        return houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType == null ? null : houseType.trim();
    }

    public String getHouseArea() {
        return houseArea;
    }

    public void setHouseArea(String houseArea) {
        this.houseArea = houseArea == null ? null : houseArea.trim();
    }

    public String getHouseState() {
        return houseState;
    }

    public void setHouseState(String houseState) {
        this.houseState = houseState == null ? null : houseState.trim();
    }

    public String getHouseRemark() {
        return houseRemark;
    }

    public void setHouseRemark(String houseRemark) {
        this.houseRemark = houseRemark == null ? null : houseRemark.trim();
    }
}