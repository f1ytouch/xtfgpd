package com.xtf.po;

public class Complain {
    private Integer complainId;

    private Integer complainNum;

    private String complainName;

    private String complainDetails;

    private String complainTime;

    private String complainReceiver;

    private String complainCellphone;

    private String complainState;

    private String complainRemark;

    public Integer getComplainId() {
        return complainId;
    }

    public void setComplainId(Integer complainId) {
        this.complainId = complainId;
    }

    public Integer getComplainNum() {
        return complainNum;
    }

    public void setComplainNum(Integer complainNum) {
        this.complainNum = complainNum;
    }

    public String getComplainName() {
        return complainName;
    }

    public void setComplainName(String complainName) {
        this.complainName = complainName == null ? null : complainName.trim();
    }

    public String getComplainDetails() {
        return complainDetails;
    }

    public void setComplainDetails(String complainDetails) {
        this.complainDetails = complainDetails == null ? null : complainDetails.trim();
    }

    public String getComplainTime() {
        return complainTime;
    }

    public void setComplainTime(String complainTime) {
        this.complainTime = complainTime == null ? null : complainTime.trim();
    }

    public String getComplainReceiver() {
        return complainReceiver;
    }

    public void setComplainReceiver(String complainReceiver) {
        this.complainReceiver = complainReceiver == null ? null : complainReceiver.trim();
    }

    public String getComplainCellphone() {
        return complainCellphone;
    }

    public void setComplainCellphone(String complainCellphone) {
        this.complainCellphone = complainCellphone == null ? null : complainCellphone.trim();
    }

    public String getComplainState() {
        return complainState;
    }

    public void setComplainState(String complainState) {
        this.complainState = complainState == null ? null : complainState.trim();
    }

    public String getComplainRemark() {
        return complainRemark;
    }

    public void setComplainRemark(String complainRemark) {
        this.complainRemark = complainRemark == null ? null : complainRemark.trim();
    }
}