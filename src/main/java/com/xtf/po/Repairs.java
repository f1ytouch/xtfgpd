package com.xtf.po;

public class Repairs {
    private Integer repairsId;

    private String repairsName;

    private String repairsDetails;

    private String repairsStartime;

    private String repairsPlan;

    private Float repairsCost;

    private String repairsPaystate;

    private String repairsRemark;

    public Integer getRepairsId() {
        return repairsId;
    }

    public void setRepairsId(Integer repairsId) {
        this.repairsId = repairsId;
    }

    public String getrepairsName() {
        return repairsName;
    }

    public void setrepairsName(String repairsName) {
        this.repairsName = repairsName;
    }

    public String getRepairsDetails() {
        return repairsDetails;
    }

    public void setRepairsDetails(String repairsDetails) {
        this.repairsDetails = repairsDetails == null ? null : repairsDetails.trim();
    }

    public String getRepairsStartime() {
        return repairsStartime;
    }

    public void setRepairsStartime(String repairsStartime) {
        this.repairsStartime = repairsStartime == null ? null : repairsStartime.trim();
    }

    public String getRepairsPlan() {
        return repairsPlan;
    }

    public void setRepairsPlan(String repairsPlan) {
        this.repairsPlan = repairsPlan == null ? null : repairsPlan.trim();
    }

    public Float getRepairsCost() {
        return repairsCost;
    }

    public void setRepairsCost(Float repairsCost) {
        this.repairsCost = repairsCost;
    }

    public String getRepairsPaystate() {
        return repairsPaystate;
    }

    public void setRepairsPaystate(String repairsPaystate) {
        this.repairsPaystate = repairsPaystate == null ? null : repairsPaystate.trim();
    }

    public String getRepairsRemark() {
        return repairsRemark;
    }

    public void setRepairsRemark(String repairsRemark) {
        this.repairsRemark = repairsRemark == null ? null : repairsRemark.trim();
    }
}