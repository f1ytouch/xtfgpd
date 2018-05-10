package com.xtf.po;

public class Equipment {
    private Integer equipmentId;

    private String equipmentName;

    private Float equipmentCost;

    private String equipmentTime;

    private String equipmentMan;

    private String equipmentSupplier;

    private String equipmentPhone;

    public Integer getEquipmentId() {
        return equipmentId;
    }

    public void setEquipmentId(Integer equipmentId) {
        this.equipmentId = equipmentId;
    }

    public String getEquipmentName() {
        return equipmentName;
    }

    public void setEquipmentName(String equipmentName) {
        this.equipmentName = equipmentName == null ? null : equipmentName.trim();
    }

    public Float getEquipmentCost() {
        return equipmentCost;
    }

    public void setEquipmentCost(Float equipmentCost) {
        this.equipmentCost = equipmentCost;
    }

    public String getEquipmentTime() {
        return equipmentTime;
    }

    public void setEquipmentTime(String equipmentTime) {
        this.equipmentTime = equipmentTime == null ? null : equipmentTime.trim();
    }

    public String getEquipmentMan() {
        return equipmentMan;
    }

    public void setEquipmentMan(String equipmentMan) {
        this.equipmentMan = equipmentMan == null ? null : equipmentMan.trim();
    }

    public String getEquipmentSupplier() {
        return equipmentSupplier;
    }

    public void setEquipmentSupplier(String equipmentSupplier) {
        this.equipmentSupplier = equipmentSupplier == null ? null : equipmentSupplier.trim();
    }

    public String getEquipmentPhone() {
        return equipmentPhone;
    }

    public void setEquipmentPhone(String equipmentPhone) {
        this.equipmentPhone = equipmentPhone == null ? null : equipmentPhone.trim();
    }
}