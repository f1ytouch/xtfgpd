package com.xtf.dao;

import com.xtf.po.Equipment;

import java.util.List;

public interface EquipmentMapper {
    int deleteByPrimaryKey(Integer equipmentId);

    int insert(Equipment record);

    int insertSelective(Equipment record);

    Equipment selectByPrimaryKey(Integer equipmentId);

    int updateByPrimaryKeySelective(Equipment record);

    int updateByPrimaryKey(Equipment record);

    List<Equipment> selectListEquipment(Equipment equipment);

    float selectSumForCost();
}