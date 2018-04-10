package com.xtf.service;

import com.xtf.po.House;

import java.util.List;

public interface HouseService {
    int deleteByPrimaryKey(Integer houseId);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(Integer houseId);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);

    List<House> selectListHouse(House record);

    House selectByHouseNum(Integer houseNum);
}
