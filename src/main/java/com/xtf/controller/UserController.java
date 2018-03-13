package com.xtf.controller;

import com.xtf.po.UserCustom;
import com.xtf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    //注入SERVICE
    @Autowired
    private UserService userService;

    @RequestMapping("/queryUser")
    public ModelAndView queryUser(HttpServletRequest request) throws Exception {

        //调用service查询用户列表
        List<UserCustom> userList = userService.findUserList(null);

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("userList:",userList);

        modelAndView.setViewName("userList");

        return modelAndView;
    }
}
