package com.xtf.service;

import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;

import java.util.List;

public interface UserService {

    UserCustom findUserById(Integer id);

    List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception;

    void updateUser(Integer id,UserCustom userCustom) throws Exception;

    void deletUser(Integer id);

    void insertUser(UserCustom userCustom) throws Exception;
}
