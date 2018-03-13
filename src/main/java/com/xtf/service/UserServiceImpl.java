package com.xtf.service;

import com.xtf.dao.UserMapper;
import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception {

        return userMapper.findUserList(userQueryVo);
    }
}
