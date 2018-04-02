package com.xtf.dao;

import com.xtf.po.Repairs;
import java.util.List;

public interface RepairsMapper {
    int deleteByPrimaryKey(Integer repairsId);

    int insert(Repairs record);

    int insertSelective(Repairs record);

    Repairs selectByPrimaryKey(Integer repairsId);

    int updateByPrimaryKeySelective(Repairs record);

    int updateByPrimaryKey(Repairs record);

    List<Repairs> selectListRep(Repairs repairs);
}