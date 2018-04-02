package com.xtf.service;

import com.xtf.po.Complain;

import java.util.List;

public interface ComplainService {
    int deleteByPrimaryKey(Integer complainId);

    int insert(Complain record);

    int insertSelective(Complain record);

    Complain selectByPrimaryKey(Integer complainId);

    int updateByPrimaryKeySelective(Complain record);

    int updateByPrimaryKey(Complain record);

    List<Complain> findListCompain(Complain record);
}
