package com.xtf.controller;

import com.xtf.po.Complain;
import com.xtf.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ComplainController {

    @Autowired
    private ComplainService complainService;

    @RequestMapping("/listComplain.do")
    public String listComplain(Model model, Complain complain) throws Exception {
        List<Complain> list = complainService.findListCompain(complain);
        model.addAttribute("complain", list);
        return "/complain/listComplain";
    }

    @RequestMapping("/selectBycomplainNum.do")
    public String selectBycomplainNum(Model model, Integer complainNum) throws Exception {
        List<Complain> list = complainService.selectBycomplainNum(complainNum);
        model.addAttribute("complain",list);
        return "/complain/listComplain";
    }


    @RequestMapping("/deleteComplain.do")
    public String deleteComplain(Integer id) throws Exception {
        complainService.deleteByPrimaryKey(id);
        return "redirect:listComplain.do";
    }

    @RequestMapping("/addComplain.do")
    public String addComplain() {

        return "/complain/addComplain";
    }

    @RequestMapping("/insertCompain.do")
    public String insertCompain(Complain complain) throws Exception {
        complainService.insertSelective(complain);
        return "redirect:listComplain.do";
    }

    @RequestMapping("/editComplain.do")
    public String editComplain(Integer id, Model model) throws Exception {
        Complain complain = complainService.selectByPrimaryKey(id);
        model.addAttribute("item", complain);
        return "/complain/editComplain";
    }

    @RequestMapping("/editComplainSubmit.do")
    public String editComplainSubmit(Integer complainId, Complain complain) throws Exception {
        complainService.updateByPrimaryKeySelective(complain);
        return "redirect:listComplain.do";
    }

}
