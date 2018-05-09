package com.xtf.controller;

import com.xtf.po.Carport;
import com.xtf.service.CarportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CarportController {

    @Autowired
    private CarportService carportService;

    @RequestMapping("/listCarport.do")
    public String listCarport(Model model, String carportNum) throws Exception {
        Carport carport = new Carport();
        carport.setCarportNum(carportNum);
        List<Carport> list = carportService.findListCarport(carport);
        model.addAttribute("car", list);
        return "/carport/listCarport";
    }

    @RequestMapping("/addCarport.do")
    public String addCarport() throws Exception {
        return "/carport/addCarport";
    }

    @RequestMapping("/insertCarport.do")
    public String insertCarport(Carport carport) throws Exception {
        carportService.insertSelective(carport);
        return "redirect:listCarport.do";
    }

    @RequestMapping("/editCarport.do")
    public String editCarport(Integer id, Model model) throws Exception {
        Carport carport = carportService.selectByPrimaryKey(id);
        model.addAttribute("item",carport);
        return "/carport/editCarport";
    }

    @RequestMapping("/editCarportSubmit.do")
    public String editCarportSubmit(Integer carportId, Carport carport) throws Exception {
        carportService.updateByPrimaryKeySelective(carport);
        return "redirect:listCarport.do";
    }

    @RequestMapping("/deleteCarport.do")
    public String deleteCarport(Integer id) {
        carportService.deleteByPrimaryKey(id);
        return "redirect:listCarport.do";
    }


}
