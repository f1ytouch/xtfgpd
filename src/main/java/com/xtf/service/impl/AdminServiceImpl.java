package com.xtf.service.impl;

import com.xtf.dao.AdminMapper;
import com.xtf.po.Admin;
import com.xtf.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class AdminServiceImpl implements AdminService {


    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin selectByNameAndPWD(Map<String, String> map) {
        return adminMapper.selectByNameAndPWD(map);
    }

    @Override
    public Admin selectByPrimaryKey(Integer id) {
        return adminMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return adminMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<Admin> selectAdminList(Admin record) {
        return adminMapper.selectAdminList(record);
    }

    @Override
    public int insert(Admin record) {
        adminMapper.insert(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Admin record) {
        adminMapper.updateByPrimaryKey(record);
        return 0;
    }
}
