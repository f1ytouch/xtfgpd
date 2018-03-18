package com.xtf.dao;

import com.xtf.po.User;
import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;

import java.util.List;

public interface UserMapper {


    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);



}