package com.xtf.service;

import com.xtf.po.Water;

import java.util.List;

public interface WaterService {

    int deleteByPrimaryKey(Integer waterId);

    int insert(Water record);

    int insertSelective(Water record);

    Water selectByPrimaryKey(Integer waterId);

    int updateByPrimaryKeySelective(Water record);

    int updateByPrimaryKey(Water record);

    List<Water> selectList(Water record);
}
