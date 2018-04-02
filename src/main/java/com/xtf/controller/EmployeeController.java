package com.xtf.controller;

import com.xtf.po.Employee;
import com.xtf.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    //查询员工列表
    @RequestMapping("/findListEmployee.do")
    public String findListEmployee(Model model) throws Exception {
        List<Employee> list = new ArrayList<>();
        list = employeeService.findListEmployee();
        model.addAttribute("emp",list);
        return "/employee/listEmployee";
    }

    @RequestMapping("/addEmployee.do")
    public String addEmployee() throws Exception {
        return "/employee/addEmployee";
    }

    @RequestMapping("/editEmployee.do")
    public String editEmployee(Model model, Integer id) throws Exception {
        Employee employee = employeeService.selectByPrimaryKey(id);
        model.addAttribute("item",employee);
        return "/employee/editEmployee";
    }

    @RequestMapping("/insertEmployee.do")
    public String insertEmployee(@ModelAttribute(value = "item") Employee employee) throws Exception {
        employeeService.insert(employee);
        return "redirect:findListEmployee.do";
    }

    @RequestMapping("/updateEmployee.do")
    public String updateEmployee(Integer employeeId, Employee employee) throws Exception {
        employeeService.updateByPrimaryKeySelective(employee);
        return "redirect:findListEmployee.do";
    }

    //删除员工
    @RequestMapping("/deleteEmployee.do")
    public String deleteEmployee(Integer employeeId) throws Exception {
        employeeService.deleteByPrimaryKey(employeeId);
        return "redirect:findListEmployee.do";
    }

}
