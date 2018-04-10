package com.xtf.controller;

import com.xtf.po.House;
import com.xtf.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HouseController {

    @Autowired
    private HouseService houseService;

    @RequestMapping("listHouse.do")
    public String listHouse(Model model, House house) throws Exception {
        List<House> list = new ArrayList<>();
        list = houseService.selectListHouse(house);
        model.addAttribute("house", list);
        return "/house/listHouse";
    }

    @RequestMapping("selectByHouseNum.do")
    public String selectByHouseNum(Model model, Integer houseNum) throws Exception {
        House se = houseService.selectByHouseNum(houseNum);
        model.addAttribute("item", se);
        return "/house/search";
    }

    @RequestMapping("addHouse.do")
    public String addHouse() {
        return "/house/addHouse";
    }

    @RequestMapping("insertHouse.do")
    public String insertHouse(House house) throws Exception {
        houseService.insertSelective(house);
        return "redirect:listHouse.do";
    }

    @RequestMapping("editHouse.do")
    public String editHouse(Model model, Integer id) throws Exception {
        House house = houseService.selectByPrimaryKey(id);
        model.addAttribute("item", house);
        return "/house/editHouse";
    }

    @RequestMapping("editHouseSubmit.do")
    public String editHouseSubmit(Integer houseId, @ModelAttribute(value = "item") House house) throws Exception {
        houseService.updateByPrimaryKey(house);
        return "redirect:listHouse.do";
    }

    @RequestMapping("deleteHouse.do")
    public String deleteHouse(Integer id) throws Exception {
        houseService.deleteByPrimaryKey(id);
        return "redirect:listHouse.do";
    }
}