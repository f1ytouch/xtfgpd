package com.xtf.controller;

import com.xtf.po.Property;
import com.xtf.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PropertyController {

    @Autowired
    private PropertyService propertyService;

    @RequestMapping("searchProperty.do")
    public String listProperty(Model model, Property property) throws Exception {
        List<Property> list = new ArrayList<>();
        list = propertyService.selectListPro(property);
        model.addAttribute("pro",list);
        return "/property/listProperty";
    }

    @RequestMapping("showPropertyByPage.do")
    public String showPropertyByPage(HttpServletRequest request, Model model) {
        propertyService.showPropertyByPage(request,model);
        return "/property/listProperty";
    }

    @RequestMapping("selectByProNum.do")
    public String selectByProNum(Model model, String propertyNum) throws Exception {
        List<Property> list = propertyService.selectByPropertyNum(propertyNum);
        model.addAttribute("pro",list);
        return "/property/listProperty";
    }


    @RequestMapping("addProperty.do")
    public String addProperty() throws Exception {
        return "/property/addProperty";
    }

    @RequestMapping("insertProperty.do")
    public String insertPro(@ModelAttribute(value = "item") Property property) throws Exception {
        propertyService.insertSelective(property);
        return "redirect:showPropertyByPage.do";
    }

    @RequestMapping("editProperty.do")
    public String editProperty(Integer id, Model model) throws Exception {
        Property property = propertyService.selectByPrimaryKey(id);
        model.addAttribute("item", property);
        return "/property/editProperty";
    }

    @RequestMapping("editPropertySubmit.do")
    public String editPropertySubmit(@ModelAttribute(value = "item") Property property) throws Exception {
        propertyService.updateByPrimaryKeySelective(property);
        return "redirect:showPropertyByPage.do";
    }

    @RequestMapping("deleteProperty.do")
    public String deleteProperty(Integer id) throws Exception {
        propertyService.deleteByPrimaryKey(id);
        return "redirect:showPropertyByPage.do";
    }


}
