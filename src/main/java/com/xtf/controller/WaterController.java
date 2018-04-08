package com.xtf.controller;

import com.xtf.po.Water;
import com.xtf.service.WaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class WaterController {

    @Autowired
    private WaterService waterService;

    @RequestMapping("listWater.do")
    public String listWater(Model model, Water water) throws Exception {
        List<Water> list = new ArrayList<>();
        list = waterService.selectList(water);
        model.addAttribute("water",list);
        return "/water/listWater";
    }

    @RequestMapping("addWater.do")
    public String addWater() throws Exception {
        return "/water/addWater";
    }

    @RequestMapping("insertWater.do")
    public String insertWater(Water water) throws Exception {
        waterService.insertSelective(water);
        return "redirect:listWater.do";
    }

    @RequestMapping("editWater.do")
    public String editWater(Integer id, Model model) throws Exception {
        Water water = waterService.selectByPrimaryKey(id);
        model.addAttribute("item",water);
        return "/water/editWater";
    }

    @RequestMapping("editWaterSubmit.do")
    public String editWaterSubmit(Integer waterId, @ModelAttribute(value = "item") Water water) throws Exception {
        waterService.updateByPrimaryKeySelective(water);
        return "redirect:listWater.do";
    }

    @RequestMapping("deleteWater.do")
    public String deleteWater(Integer id) throws Exception {
        waterService.deleteByPrimaryKey(id);
        return "redirect:listWater.do";
    }
}
