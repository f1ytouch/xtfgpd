package com.xtf.controller;

import com.xtf.po.DateCount;
import com.xtf.service.TallyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class TallyController {

    @Autowired
    private TallyService tallyService;


    @RequestMapping("showSUM.do")
    public String showSUM(Model model) {
        List<DateCount> list = tallyService.countNearThreeMonth();
        model.addAttribute("tally",list);
        return "/tally/showSUM";
    }



}
