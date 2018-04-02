package com.xtf.service;

import com.xtf.po.Employee;

import java.util.List;

public interface EmployeeService {
    int deleteByPrimaryKey(Integer employeeId);

    int insert(Employee record);

    int insertSelective(Employee record);

    Employee selectByPrimaryKey(Integer employeeId);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);

    List<Employee> findListEmployee();
}
