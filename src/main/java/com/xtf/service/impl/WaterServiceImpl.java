package com.xtf.service.impl;

import com.xtf.dao.WaterMapper;
import com.xtf.po.Water;
import com.xtf.service.WaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class WaterServiceImpl implements WaterService {


    @Autowired
    private WaterMapper waterMapper;

    @Override
    public int deleteByPrimaryKey(Integer waterId) {
        waterMapper.deleteByPrimaryKey(waterId);
        return 0;
    }

    @Override
    public int insert(Water record) {
        waterMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Water record) {
        waterMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Water selectByPrimaryKey(Integer waterId) {

        return waterMapper.selectByPrimaryKey(waterId);
    }

    @Override
    public int updateByPrimaryKeySelective(Water record) {
        waterMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Water record) {
        waterMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Water> selectList(Water record) {
        List<Water> list = new ArrayList<>();
        list = waterMapper.selectList(record);
        return list;
    }
}
