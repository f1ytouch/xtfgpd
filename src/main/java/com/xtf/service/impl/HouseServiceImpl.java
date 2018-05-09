package com.xtf.service.impl;

import com.xtf.dao.HouseMapper;
import com.xtf.po.House;
import com.xtf.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HouseServiceImpl implements HouseService{

    @Autowired
    private HouseMapper houseMapper;

    @Override
    public int deleteByPrimaryKey(String houseId) {
        houseMapper.deleteByPrimaryKey(houseId);
        return 0;
    }

    @Override
    public int insert(House record) {
        houseMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(House record) {
        houseMapper.insertSelective(record);
        return 0;
    }

    @Override
    public House selectByPrimaryKey(String houseId) {

        return houseMapper.selectByPrimaryKey(houseId);
    }

    @Override
    public int updateByPrimaryKeySelective(House record) {
        houseMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(House record) {
        houseMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<House> selectListHouse(House record) {
        List<House> list = new ArrayList<>();
        list = houseMapper.selectListHouse(record);
        return list;
    }

    @Override
    public House selectByHouseNum(Integer houseNum) {
        return houseMapper.selectByHouseNum(houseNum);
    }
}
