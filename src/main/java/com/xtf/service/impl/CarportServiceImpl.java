package com.xtf.service.impl;

import com.xtf.dao.CarportMapper;
import com.xtf.po.Carport;
import com.xtf.service.CarportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarportServiceImpl implements CarportService {

    @Autowired
    private CarportMapper carportMapper;

    @Override
    public int deleteByPrimaryKey(Integer carportId) {
        carportMapper.deleteByPrimaryKey(carportId);
        return 0;
    }

    @Override
    public int insert(Carport record) {
        carportMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Carport record) {
        carportMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Carport selectByPrimaryKey(Integer carportId) {
        Carport carport = carportMapper.selectByPrimaryKey(carportId);
        return carport;
    }

    @Override
    public int updateByPrimaryKeySelective(Carport record) {
        carportMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Carport record) {
        carportMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Carport> findListCarport(Carport record) {
        List<Carport> list = carportMapper.findListCarport(record);
        return list;
    }
}
