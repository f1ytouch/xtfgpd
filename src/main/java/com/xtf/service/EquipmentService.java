package com.xtf.service;

import com.xtf.po.Equipment;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface EquipmentService {
    int deleteByEquipmentId(Integer equipmentId);

    int addNewEquipment(Equipment record);

    int insertSelective(Equipment record);

    Equipment selectByEquipmentId(Integer equipmentId);

    int updateEquipmentIdSelective(Equipment record);

    int updateByEquipmentId(Equipment record);

    List<Equipment> showEquipmetByPage(HttpServletRequest request, Model model);
}
