package com.xtf.service;

import com.xtf.po.Carport;

import java.util.List;

public interface CarportService {

    int deleteByPrimaryKey(Integer carportId);

    int insert(Carport record);

    int insertSelective(Carport record);

    Carport selectByPrimaryKey(Integer carportId);

    int updateByPrimaryKeySelective(Carport record);

    int updateByPrimaryKey(Carport record);

    List<Carport> findListCarport(Carport record);
}