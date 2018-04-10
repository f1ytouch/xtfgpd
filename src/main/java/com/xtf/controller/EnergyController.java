package com.xtf.controller;

import com.xtf.po.Energy;
import com.xtf.service.EnergyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EnergyController {

    @Autowired
    private EnergyService energyService;

    @RequestMapping("listEnergy.do")
    public String listEnergy(Model model, Energy energy) throws Exception {
        List<Energy> list = new ArrayList<>();
        list = energyService.selectListEnergy(energy);
        model.addAttribute("energy", list);
        return "/energy/listEnergy";
    }

    @RequestMapping("selectByEnergyNum.do")
    public String selectByEnergyNum(Model model, Integer energyNum) throws Exception {
        List<Energy> list = energyService.selectByEnergyNum(energyNum);
        model.addAttribute("energy", list);
        return "/energy/listEnergy";
    }

    @RequestMapping("addEnergy.do")
    public String addEnergy() throws Exception {
        return "/energy/addEnergy";
    }

    @RequestMapping("insertEnergy.do")
    public String insertEnergy(Energy energy) throws Exception {
        energyService.insertSelective(energy);
        return "redirect:listEnergy.do";
    }

    @RequestMapping("editEnergy.do")
    public String editEnergy(Integer id, Model model) throws Exception {
        Energy energy = energyService.selectByPrimaryKey(id);
        model.addAttribute("item", energy);
        return "/energy/editEnergy";
    }

    @RequestMapping("editEnergySubmit.do")
    public String editEnergySubmit(Integer energyId, @ModelAttribute(value = "item") Energy energy) throws Exception {
        energyService.updateByPrimaryKeySelective(energy);
        return "redirect:listEnergy.do";
    }

    @RequestMapping("deleteEnergy.do")
    public String deleteEnergy(Integer id) throws Exception {
        energyService.deleteByPrimaryKey(id);
        return "redirect:listEnergy.do";
    }
}
