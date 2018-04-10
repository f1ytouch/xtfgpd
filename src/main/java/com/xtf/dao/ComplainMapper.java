package com.xtf.dao;

import com.xtf.po.Complain;

import java.util.List;

public interface ComplainMapper {
    int deleteByPrimaryKey(Integer complainId);

    int insert(Complain record);

    int insertSelective(Complain record);

    Complain selectByPrimaryKey(Integer complainId);

    int updateByPrimaryKeySelective(Complain record);

    int updateByPrimaryKey(Complain record);

    List<Complain> findListCompain(Complain record);

    List<Complain> selectBycomplainNum(Integer complainNum);
}