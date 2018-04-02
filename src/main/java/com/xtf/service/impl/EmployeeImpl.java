package com.xtf.service.impl;

import com.xtf.dao.EmployeeMapper;
import com.xtf.po.Employee;
import com.xtf.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeImpl implements EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public int deleteByPrimaryKey(Integer employeeId) {
        employeeMapper.deleteByPrimaryKey(employeeId);
        return 0;
    }

    @Override
    public int insert(Employee record) {
        employeeMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Employee record) {
        return 0;
    }

    @Override
    public Employee selectByPrimaryKey(Integer employeeId) {

        return employeeMapper.selectByPrimaryKey(employeeId);
    }

    @Override
    public int updateByPrimaryKeySelective(Employee record) {
        employeeMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Employee record) {
        employeeMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Employee> findListEmployee() {
        return employeeMapper.findListEmployee();
    }
}
