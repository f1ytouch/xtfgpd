package com.xtf.service;

import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;

import java.util.List;

public interface UserService {
    public List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception;
}
