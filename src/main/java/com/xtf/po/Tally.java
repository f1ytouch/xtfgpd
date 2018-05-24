package com.xtf.po;

public class Tally {
    private Integer tallyId;

    private String tallyName;

    private Float tallyFact;

    private Float tallyMust;

    private String tallyTime;

    public Integer getTallyId() {
        return tallyId;
    }

    public void setTallyId(Integer tallyId) {
        this.tallyId = tallyId;
    }

    public String getTallyName() {
        return tallyName;
    }

    public void setTallyName(String tallyName) {
        this.tallyName = tallyName == null ? null : tallyName.trim();
    }

    public Float getTallyFact() {
        return tallyFact;
    }

    public void setTallyFact(Float tallyFact) {
        this.tallyFact = tallyFact;
    }

    public Float getTallyMust() {
        return tallyMust;
    }

    public void setTallyMust(Float tallyMust) {
        this.tallyMust = tallyMust;
    }

    public String getTallyTime() {
        return tallyTime;
    }

    public void setTallyTime(String tallyTime) {
        this.tallyTime = tallyTime == null ? null : tallyTime.trim();
    }
}