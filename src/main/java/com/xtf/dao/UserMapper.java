package com.xtf.dao;
import com.xtf.po.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {


    int deleteByPrimaryKey(Integer id);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int  updateByPrimaryKey(User record);

    int updateByKeyW(User record);

    String selectNumByName(String username);

    long getUserCount();

    List<User> selectUserByPage(@Param(value = "startPos") Integer startPos,
                              @Param(value = "pageSize") Integer pageSize);

}