package com.xtf.controller;

import com.xtf.po.Equipment;
import com.xtf.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class EquipmentController {

    @Autowired
    private EquipmentService equipmentService;

    @RequestMapping("listEquipment.do")
    public String listEquipment(Model model, Equipment equipment) {
        List<Equipment> list = equipmentService.findEquipmetList(equipment);
        model.addAttribute("equip",list);

        return "/equipment/listEquipment";
    }

    @RequestMapping("addEquipment.do")
    public String addEquipment() {
        return "/equipment/addEquipment";
    }

    @RequestMapping("insertEquipment.do")
    public String insertEquipment(Equipment equipment) {
        equipmentService.addNewEquipment(equipment);
        return "redirect:listEquipment.do";
    }

    @RequestMapping("deleteEquipment.do")
    public String deleteEquipment(Integer id) {
        equipmentService.deleteByEquipmentId(id);
        return "redirect:listEquipment.do";
    }

    @RequestMapping("editEquipment.do")
    public String editEquipment(Integer id, Model model) {
        Equipment equipment = equipmentService.selectByEquipmentId(id);
        model.addAttribute("item",equipment);
        return "/equipment/editEquipment";
    }

    @RequestMapping("editEquipmentSubmit.do")
    public String editEquipmentSubmit(Equipment equipment) {
        equipmentService.updateByEquipmentId(equipment);
        return "redirect:listEquipment.do";
    }

}
