package com.xtf.service;

import com.xtf.po.Energy;

import java.util.List;

public interface EnergyService {
    int deleteByPrimaryKey(Integer energyId);

    int insert(Energy record);

    int insertSelective(Energy record);

    Energy selectByPrimaryKey(Integer energyId);

    int updateByPrimaryKeySelective(Energy record);

    int updateByPrimaryKey(Energy record);

    List<Energy> selectListEnergy(Energy record);
}
