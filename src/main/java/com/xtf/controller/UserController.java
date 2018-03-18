package com.xtf.controller;

import com.xtf.po.User;

import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;
import com.xtf.service.UserService;
import com.xtf.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController  {


    @Autowired
    private UserService userService;

    @RequestMapping("/List.do")
    public String toIndex() {
        return "/itemsList";
    }


    @RequestMapping("editU")
    public String toeditU() {
        return "/editItem";
    }

    @RequestMapping("listU")
    public String tolistU() {
        return "/listbrand";
    }




    @RequestMapping("/listUser.do")
    public String listUser(Model model) throws Exception {



        List<UserCustom> userList = new ArrayList<>();

        UserCustom userCustom = new UserCustom();
//            userCustom.setUsername("李四");

        UserQueryVo userQueryVo = new UserQueryVo();

        userQueryVo.setUserCustom(userCustom);

        userList = userService.findUserList(userQueryVo);

        model.addAttribute("userList",userList);

        return "/itemsList";
    }

    @RequestMapping("/editUser")
    public String edititem(Model model,Integer id) throws Exception {

        UserCustom userCustom = (UserCustom) userService.findUserById(id);

        model.addAttribute("item",userCustom);

        return "/editItem";
    }

    @RequestMapping("/editUserSubmit")
    public String editUserSubmit(Integer id, UserCustom userCustom) throws Exception {

        userService.updateUser(id,userCustom);

        return "redirect:listUser.do";
    }

    public UserService getUserService() {

        return userService;
    }

    public void setUserService(UserService userService) {

        this.userService = userService;
    }
}
