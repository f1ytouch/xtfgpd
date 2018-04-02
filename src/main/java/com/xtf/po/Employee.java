package com.xtf.po;

import java.util.Date;

public class Employee {
    private Integer employeeId;

    private String employeeName;

    private String employeeSex;

    private String employeeIdcard;

    private String employeeOrigo;

    private String employeeAddress;

    private String employeeEducation;

    private Date employeeHiredate;

    private Date employeeLeavedate;

    private String employeeStation;

    private String employeeState;

    private String employeeRfl;

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName == null ? null : employeeName.trim();
    }

    public String getEmployeeSex() {
        return employeeSex;
    }

    public void setEmployeeSex(String employeeSex) {
        this.employeeSex = employeeSex == null ? null : employeeSex.trim();
    }

    public String getEmployeeIdcard() {
        return employeeIdcard;
    }

    public void setEmployeeIdcard(String employeeIdcard) {
        this.employeeIdcard = employeeIdcard == null ? null : employeeIdcard.trim();
    }

    public String getEmployeeOrigo() {
        return employeeOrigo;
    }

    public void setEmployeeOrigo(String employeeOrigo) {
        this.employeeOrigo = employeeOrigo == null ? null : employeeOrigo.trim();
    }

    public String getEmployeeAddress() {
        return employeeAddress;
    }

    public void setEmployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress == null ? null : employeeAddress.trim();
    }

    public String getEmployeeEducation() {
        return employeeEducation;
    }

    public void setEmployeeEducation(String employeeEducation) {
        this.employeeEducation = employeeEducation == null ? null : employeeEducation.trim();
    }

    public Date getEmployeeHiredate() {
        return employeeHiredate;
    }

    public void setEmployeeHiredate(Date employeeHiredate) {
        this.employeeHiredate = employeeHiredate;
    }

    public Date getEmployeeLeavedate() {
        return employeeLeavedate;
    }

    public void setEmployeeLeavedate(Date employeeLeavedate) {
        this.employeeLeavedate = employeeLeavedate;
    }

    public String getEmployeeStation() {
        return employeeStation;
    }

    public void setEmployeeStation(String employeeStation) {
        this.employeeStation = employeeStation == null ? null : employeeStation.trim();
    }

    public String getEmployeeState() {
        return employeeState;
    }

    public void setEmployeeState(String employeeState) {
        this.employeeState = employeeState == null ? null : employeeState.trim();
    }

    public String getEmployeeRfl() {
        return employeeRfl;
    }

    public void setEmployeeRfl(String employeeRfl) {
        this.employeeRfl = employeeRfl == null ? null : employeeRfl.trim();
    }


}