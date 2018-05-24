package com.xtf.dao;

import com.xtf.po.House;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HouseMapper {
    int deleteByPrimaryKey(String houseId);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(String houseId);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);

    List<House> selectListHouse(House record);

    House selectByHouseNum(String houseId);

    public List<House> selectHouseByPage(@Param(value = "startPos") Integer startPos,
                                       @Param(value = "pageSize") Integer pageSize);

    public long getHouseCount();
}