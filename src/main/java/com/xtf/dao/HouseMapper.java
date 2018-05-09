package com.xtf.dao;

import com.xtf.po.House;

import java.util.List;

public interface HouseMapper {
    int deleteByPrimaryKey(String houseId);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(String houseId);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);

    List<House> selectListHouse(House record);

    House selectByHouseNum(Integer houseNum);
}