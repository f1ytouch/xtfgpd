package com.xtf.controller;

import com.xtf.po.Admin;
import com.xtf.service.AdminService;
import com.xtf.utils.MD5;
import com.xtf.utils.RequireAuth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    //登录MD5验证
    @RequestMapping("/login.do")
    public String login(String username, String password,
                        HttpSession session, Model model) {
        Map<String, String> map = new HashMap<String, String>();
        password = new MD5().GetHashPwd(password);
        System.out.println(password);
        map.put("adminname", username);
        map.put("adminpwd", password);
        Admin admin = adminService.selectByNameAndPWD(map);
        int roleid = admin.getRoleid();

        if (admin == null) {
            return "/index";
        }

        if (roleid == 0) {
            session.setAttribute("admin",admin);
            return "/userpage";
        }

        session.setAttribute("admin",admin);
        return "/mainpage";
    }

    @RequestMapping("/logout.do")
    public String logout(HttpSession session) throws Exception {
        session.invalidate();
        return "/index";
    }

    //返回首页
    @RequestMapping("/mainpage.do")
    public String mainpage() {

        return "/mainpage";
    }

    @RequestMapping("/userpage.do")
    public String userpage() {

        return "/userpage";
    }

    //显示系统用户列表
    @RequireAuth
    @RequestMapping("/adminList.do")
    public String adminList(Model model, Admin admin) throws Exception {
        List<Admin> adminList = adminService.selectAdminList(admin);
        model.addAttribute("adL",adminList);
        return "/adminview/adminList";
    }

    //添加系统用户
    @RequireAuth
    @RequestMapping("/addAdmin.do")
    public String addAdmin() throws Exception {
        return "/adminview/addAdmin";
    }

    @RequireAuth
    @RequestMapping("/editAdmin.do")
    public String editAdmin(Model model,Integer id) throws Exception {
        Admin admin = adminService.selectByPrimaryKey(id);
        model.addAttribute("admin",admin);
        return "/adminview/editAdmin";
    }

    @RequireAuth
    @RequestMapping("/insertAdmin.do")
    public  String insertAmin(Admin admin) throws Exception {
        String pwd = admin.getAdminpwd();
        pwd = new MD5().GetHashPwd(pwd);
        admin.setAdminpwd(pwd);
        adminService.insert(admin);
        return "redirect:adminList.do";
    }

    //更新系统用户，密码经MD5加密
    @RequireAuth
    @RequestMapping("/updateAdmin.do")
    public String updateAdmin(Integer id, Admin admin) throws Exception {
        String pwd = admin.getAdminpwd();
        pwd = new MD5().GetHashPwd(pwd);
        admin.setAdminpwd(pwd);
        adminService.updateByPrimaryKey(admin);
        return "forward:adminList.do";
    }

    //删除用户
    @RequireAuth
    @RequestMapping("/deleteAdmin.do")
    public String deleteAdmin(Integer id) throws Exception {
        adminService.deleteByPrimaryKey(id);
        return "forward:adminList.do";
    }

}
