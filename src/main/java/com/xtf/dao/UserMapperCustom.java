package com.xtf.dao;

import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;

import java.util.List;

public interface UserMapperCustom {
    List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception;
}
