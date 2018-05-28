package com.xtf.service.impl;

import com.xtf.dao.EquipmentMapper;
import com.xtf.po.Equipment;
import com.xtf.service.EquipmentService;
import com.xtf.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
    public List<Equipment> showEquipmetByPage(HttpServletRequest request, Model model) {

        String pageNow = request.getParameter("pageNow");

        Page page = null;

        int totalCount = (int) equipmentMapper.getCountEquip();

        List<Equipment> list = new ArrayList<>();

        if (pageNow != null) {
            page = new Page(totalCount,Integer.parseInt(pageNow));

            list = equipmentMapper.selectListEquipment(page.getStartPos(), page.getPageSize());
        } else {
            page = new Page(totalCount, 1);

            list = equipmentMapper.selectListEquipment(page.getStartPos(), page.getPageSize());
        }

        model.addAttribute("equip", list);

        model.addAttribute("page", page);

        return null;
    }


}
