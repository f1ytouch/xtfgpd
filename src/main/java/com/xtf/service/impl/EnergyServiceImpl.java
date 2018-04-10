package com.xtf.service.impl;

import com.xtf.dao.EnergyMapper;
import com.xtf.po.Energy;
import com.xtf.service.EnergyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EnergyServiceImpl implements EnergyService {

    @Autowired
    private EnergyMapper energyMapper;

    @Override
    public int deleteByPrimaryKey(Integer energyId) {
        energyMapper.deleteByPrimaryKey(energyId);
        return 0;
    }

    @Override
    public int insert(Energy record) {
        energyMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Energy record) {
        energyMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Energy selectByPrimaryKey(Integer energyId) {
        return energyMapper.selectByPrimaryKey(energyId);
    }

    @Override
    public int updateByPrimaryKeySelective(Energy record) {
        energyMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Energy record) {
        energyMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Energy> selectListEnergy(Energy record) {
        List<Energy> list = new ArrayList<>();
        list = energyMapper.selectListEnergy(record);
        return list;
    }

    @Override
    public List<Energy> selectByEnergyNum(Integer energyNum) {
        List<Energy> list = new ArrayList<>();
        list = energyMapper.selectByEnergyNum(energyNum);
        return list;
    }
}
