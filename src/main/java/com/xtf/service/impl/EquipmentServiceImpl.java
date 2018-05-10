package com.xtf.service.impl;

import com.xtf.dao.EquipmentMapper;
import com.xtf.po.Equipment;
import com.xtf.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class EquipmentServiceImpl implements EquipmentService {

    @Autowired
    private EquipmentMapper equipmentMapper;

    @Override
    public int deleteByEquipmentId(Integer equipmentId) {
        equipmentMapper.deleteByPrimaryKey(equipmentId);
        return 0;
    }

    @Override
    public int addNewEquipment(Equipment record) {
        equipmentMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Equipment record) {
        equipmentMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Equipment selectByEquipmentId(Integer equipmentId) {
        return equipmentMapper.selectByPrimaryKey(equipmentId);
    }

    @Override
    public int updateEquipmentIdSelective(Equipment record) {
        equipmentMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByEquipmentId(Equipment record) {
        equipmentMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Equipment> findEquipmetList(Equipment equipment) {
        return equipmentMapper.selectListEquipment(equipment);
    }
}
