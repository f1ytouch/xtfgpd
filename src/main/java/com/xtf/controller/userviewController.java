package com.xtf.controller;

import com.xtf.po.*;
import com.xtf.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/userview")
public class userviewController {

    @Autowired
    private WaterService waterService;

    @Autowired
    private EnergyService energyService;

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private RepairsService repairsService;

    @Autowired
    private ComplainService complainService;

    @RequestMapping("/tolistWater.do")
    public String tolistWater() {
        return "/userview/listWater";
    }

    @RequestMapping("/tolistEnergy.do")
    public String tolistEnergy() {
        return "/userview/listEnergy";
    }

    @RequestMapping("/tolistPro.do")
    public String tolistPro() {
        return "/userview/listProperty";
    }

    @RequestMapping("/tolistRepairs.do")
    public String tolistRe() {
        return "/userview/listRepairs";
    }

    @RequestMapping("/tolistCom.do")
    public String tolistCom() {
        return "/userview/listComplain";
    }

    @RequestMapping("/selectByWaterNum.do")
    public String selectByWaterNum(Model model, Integer waterNum) throws Exception {
        List<Water> list = waterService.selectByWaterNum(waterNum);
        model.addAttribute("water",list);
        return "/userview/listWater";
    }

    @RequestMapping("/selectByEnergyNum.do")
    public String selectByEnergyNum(Model model, Integer energyNum) throws Exception {
        List<Energy> list = energyService.selectByEnergyNum(energyNum);
        model.addAttribute("energy", list);
        return "/userview/listEnergy";
    }

    @RequestMapping("/selectByProNum.do")
    public String selectByProNum(Model model, String propertyNum) throws Exception {
        List<Property> list = propertyService.selectByPropertyNum(propertyNum);
        model.addAttribute("pro",list);
        return "/userview/listProperty";
    }

    @RequestMapping("/selectByNum.do")
    public String selectByNum(Model model, String repairsName) throws Exception {
        List<Repairs> list = repairsService.selectByName(repairsName);
        model.addAttribute("repairs", list);
        return "/userview/listRepairs";
    }

    @RequestMapping("/addRepairs.do")
    public String addRepairs() throws Exception {
        return "/userview/addRepairs";
    }

    @RequestMapping("/insertRepairs.do")
    public String insertRepairs(Repairs repairs) throws Exception {
        repairsService.insert(repairs);
        return "redirect:tolistRepairs.do";
    }

    @RequestMapping("/selectBycomplainNum.do")
    public String selectBycomplainNum(Model model, Integer complainNum) throws Exception {
        List<Complain> list = complainService.selectBycomplainNum(complainNum);
        model.addAttribute("complain",list);
        return "/userview/listComplain";
    }

    @RequestMapping("/useraddComplain.do")
    public String useraddComplain() {

        return "/userview/addComplain";
    }

    @RequestMapping("/insertCompain.do")
    public String userinsertCompain(Complain complain) throws Exception {
        complainService.insertSelective(complain);
        return "redirect:tolistCom.do";
    }

    @RequestMapping("/deleteComplain.do")
    public String deleteComplain(Integer id) throws Exception {
        complainService.deleteByPrimaryKey(id);
        return "redirect:tolistCom.do";
    }


}
