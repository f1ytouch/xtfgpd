package com.xtf.dao;

import com.xtf.po.Equipment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EquipmentMapper {
    int deleteByPrimaryKey(Integer equipmentId);

    int insert(Equipment record);

    int insertSelective(Equipment record);

    Equipment selectByPrimaryKey(Integer equipmentId);

    int updateByPrimaryKeySelective(Equipment record);

    int updateByPrimaryKey(Equipment record);

    List<Equipment> selectListEquipment(@Param(value = "startPos") Integer startPos,
                                        @Param(value = "pageSize") Integer pageSize);

    float selectSumForCost();

    long getCountEquip();


}