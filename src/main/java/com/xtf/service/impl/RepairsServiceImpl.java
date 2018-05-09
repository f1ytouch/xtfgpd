package com.xtf.service.impl;


import com.xtf.po.Repairs;
import com.xtf.dao.RepairsMapper;
import com.xtf.service.RepairsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class RepairsServiceImpl implements RepairsService{

    @Autowired
    private RepairsMapper requestMapping;

    @Override
    public int deleteByPrimaryKey(Integer repairsId) {
        requestMapping.deleteByPrimaryKey(repairsId);
        return 0;
    }

    @Override
    public int insert(Repairs record) {
        requestMapping.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Repairs record) {
        return 0;
    }

    @Override
    public Repairs selectByPrimaryKey(Integer repairsId) {
        Repairs repairs = requestMapping.selectByPrimaryKey(repairsId);
        return repairs;
    }

    @Override
    public int updateByPrimaryKeySelective(Repairs record) {
        requestMapping.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateRepairs(Integer id, Repairs record) {
        requestMapping.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public List<Repairs> selectByName(String repairsName) {
        return requestMapping.selectByName(repairsName);
    }

    @Override
    public int updateByall(Repairs record) {
        requestMapping.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Repairs> selectListRep(Repairs repairs) {
        List<Repairs> list = new ArrayList<Repairs>();
        list = requestMapping.selectListRep(repairs);
        return list;
    }


}
