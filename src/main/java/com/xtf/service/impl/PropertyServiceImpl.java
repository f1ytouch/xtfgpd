package com.xtf.service.impl;

import com.xtf.dao.PropertyMapper;
import com.xtf.po.Property;
import com.xtf.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PropertyServiceImpl implements PropertyService {

    @Autowired
    private PropertyMapper propertyMapper;

    @Override
    public int deleteByPrimaryKey(Integer propertyId) {
        propertyMapper.deleteByPrimaryKey(propertyId);
        return 0;
    }

    @Override
    public int insert(Property record) {
        propertyMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Property record) {
        propertyMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Property selectByPrimaryKey(Integer propertyId) {
        return propertyMapper.selectByPrimaryKey(propertyId);
    }

    @Override
    public int updateByPrimaryKeySelective(Property record) {
        propertyMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Property record) {
        propertyMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public List<Property> selectListPro(Property record) {
        List<Property> list = new ArrayList<>();
        list = propertyMapper.selectListPro(record);
        return list;
    }

    @Override
    public List<Property> selectByPropertyNum(String propertyNum) {
        return propertyMapper.selectByPropertyNum(propertyNum);
    }
}
