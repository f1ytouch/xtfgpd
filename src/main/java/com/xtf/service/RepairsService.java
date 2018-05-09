package com.xtf.service;

import com.xtf.po.Repairs;
import java.util.List;

public interface RepairsService {
    int deleteByPrimaryKey(Integer repairsId);

    int insert(Repairs record);

    int insertSelective(Repairs record);

    Repairs selectByPrimaryKey(Integer repairsId);

    int updateByPrimaryKeySelective(Repairs record);

    int updateByall(Repairs record);

    List<Repairs> selectListRep(Repairs repairs);

    public int updateRepairs(Integer id, Repairs record);

    List<Repairs> selectByName(String repairsName);
}
