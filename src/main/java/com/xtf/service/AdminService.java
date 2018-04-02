package com.xtf.service;

import com.xtf.po.Admin;

import java.util.List;
import java.util.Map;

public interface AdminService {

    Admin selectByNameAndPWD(Map<String, String> map);

    Admin selectByPrimaryKey(Integer id);

    int insert(Admin record);

    int deleteByPrimaryKey(Integer id);

    int updateByPrimaryKey(Admin record);

    List<Admin> selectAdminList(Admin record);
}
