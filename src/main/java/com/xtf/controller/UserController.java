package com.xtf.controller;

import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;
import com.xtf.service.UserService;
import com.xtf.utils.RequireAuth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/user")
public class UserController  {


    @Autowired
    private UserService userService;

    @RequireAuth
    @RequestMapping("/addUser.do")
    public String editUser() throws Exception {
        return "/user/addUser";
    }

    @RequireAuth
    @RequestMapping("/listUser.do")
    public String listUser(Model model,String username,UserCustom userCustom) throws Exception {
        List<UserCustom> userList = new ArrayList<>();
//        UserCustom userCustom = new UserCustom();
        UserQueryVo userQueryVo = new UserQueryVo();
        userQueryVo.setUserCustom(userCustom);
        userList = userService.findUserList(userQueryVo);
        model.addAttribute("userList", userList);
        return "/user/userList";
    }


    //按姓名模糊查询
    @RequestMapping("/searchUser.do")
    public String searchUser(Model model,String username) throws Exception {
        List<UserCustom> userList = new ArrayList<>();
        UserCustom userCustom = new UserCustom();
        userCustom.setUsername(username);
        UserQueryVo userQueryVo = new UserQueryVo();
        userQueryVo.setUserCustom(userCustom);
        userList = userService.findUserList(userQueryVo);
        model.addAttribute("userList",userList);
        return "/search";
    }

    @RequestMapping("/search.do")
    public String search(Model model, String username) throws Exception {
        return "/search";
    }

    //根据商品id查看商品信息rest接口
    //@RequestMapping指定resful方法的url中的参数，参数要用{}包起来
    //@PathVariable将url的{}包起来的参数与形参进行绑定
    @RequestMapping("/viewUser/{id}")
    public @ResponseBody
    UserCustom viewUser(@PathVariable("id") Integer id) throws Exception {
        UserCustom userCustom = userService.findUserById(id);
        return userCustom;
    }

    @RequireAuth
    @RequestMapping("/editUser.do")
    public String edititem(Model model,Integer id) throws Exception {
        UserCustom userCustom = (UserCustom) userService.findUserById(id);
        model.addAttribute("item",userCustom);
        return "/user/editUser";
    }

    @RequireAuth
    @RequestMapping("/editUserSubmit.do")
    public String editUserSubmit( Model model, Integer id,
                                  @ModelAttribute(value = "item") UserCustom userCustom) throws Exception {
        userService.updateUser(id,userCustom);
//        model.addAttribute("item", userCustom);
        return "redirect:listUser.do";
    }

    @RequireAuth
    @RequestMapping("/deleteUser.do")
    public String deletUserById(Integer id) throws Exception {
        userService.deletUser(id);
        return "redirect:listUser.do";

    }

    @RequireAuth
    @RequestMapping("/insertUser.do")
    public String insertUserByCustom(UserCustom userCustom) throws Exception {
        userService.insertUser(userCustom);
        return "redirect:listUser.do";
    }

    @ModelAttribute("itemsType")
    public Map<String, String> getItemsType() throws Exception {
        HashMap<String, String> itemsType = new HashMap<String, String>();
        itemsType.put("001", "姓名");
        itemsType.put("002", "年龄");
        return itemsType;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
