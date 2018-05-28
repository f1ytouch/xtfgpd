package com.xtf.controller;

import com.xtf.dao.UserMapper;
import com.xtf.po.*;
import com.xtf.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/userview")
public class userviewController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private RepairsService repairsService;

    @Autowired
    private ComplainService complainService;

    @RequestMapping("/tolistPro.do")
    public String tolistPro(HttpServletRequest request, Model model) {

        HttpSession session = request.getSession();

        Admin admin = (Admin) session.getAttribute("admin");

        String adminname = admin.getAdminname();

        String num = userMapper.selectNumByName(adminname);

        Property property = new Property();

        property.setPropertyNum(num);

        List<Property> list = propertyService.selectListPro(property);

        model.addAttribute("pro",list);

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
