package com.xtf.controller;

import com.xtf.po.Repairs;
import com.xtf.service.RepairsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class RepairsController {

    @Autowired
    private RepairsService repairsService;

    @RequestMapping("/listRepairs.do")
    public String listRepairs(Model model, Repairs repairs) throws Exception {
        List<Repairs> list = new ArrayList<>();
        list = repairsService.selectListRep(repairs);
        model.addAttribute("repairs", list);
        return "/repairs/listRepairs";
    }

    @RequestMapping("/selectByNum.do")
    public String selectByNum(Model model, String repairsName) throws Exception {
        List<Repairs> list = repairsService.selectByName(repairsName);
        model.addAttribute("repairs", list);
        return "/repairs/listRepairs";
    }

    @RequestMapping("/addRepairs.do")
    public String addRepairs() throws Exception {
        return "/repairs/addRepairs";
    }

    @RequestMapping("/insertRepairs.do")
    public String insertRepairs(Repairs repairs) throws Exception {
        repairsService.insert(repairs);
        return "redirect:listRepairs.do";
    }

    @RequestMapping("/editRepairs.do")
    public String editRepairs(Model model, Integer id) throws Exception {
        Repairs repairs = repairsService.selectByPrimaryKey(id);
        model.addAttribute("item", repairs);
        return "/repairs/editRepairs";
    }

    @RequestMapping("/editRepairsSubmit.do")
    public String editRepairsSubmit(Integer repairsId, @ModelAttribute(value = "item") Repairs repairs) throws Exception {

        repairsService.updateByPrimaryKeySelective(repairs);
        return "redirect:listRepairs.do";
    }

    @RequestMapping("/deleteRepairs.do")
    public String deleteRepairs(Integer id) throws Exception {
        repairsService.deleteByPrimaryKey(id);
        return "redirect:listRepairs.do";
    }
}
