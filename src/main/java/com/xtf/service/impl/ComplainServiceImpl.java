package com.xtf.service.impl;

import com.xtf.dao.ComplainMapper;
import com.xtf.po.Complain;
import com.xtf.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class ComplainServiceImpl implements ComplainService {


    @Autowired
    private ComplainMapper complainMapper;

    @Override
    public int deleteByPrimaryKey(Integer complainId) {
        complainMapper.deleteByPrimaryKey(complainId);
        return 0;
    }

    @Override
    public int insert(Complain record) {
        complainMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Complain record) {
        complainMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Complain selectByPrimaryKey(Integer complainId) {
        Complain complain = complainMapper.selectByPrimaryKey(complainId);
        return complain;
    }

    @Override
    public int updateByPrimaryKeySelective(Complain record) {
        complainMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Complain record) {
        complainMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Complain> findListCompain(Complain record) {
        List<Complain> list = new ArrayList<>();
        list = complainMapper.findListCompain(record);
        return list;
    }


}
