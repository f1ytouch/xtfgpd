package com.xtf.dao;
import com.xtf.po.User;

public interface UserMapper {


    int deleteByPrimaryKey(Integer id);
//
//    int insert(User record);
//
    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int  updateByPrimaryKey(User record);

    int updateByKeyW(User record);





}