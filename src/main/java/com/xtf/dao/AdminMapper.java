package com.xtf.dao;

import com.xtf.po.Admin;

import java.util.List;
import java.util.Map;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKey(Admin record);

    Admin selectByNameAndPWD(Map<String, String> map);

    List<Admin> selectAdminList(Admin record);

}