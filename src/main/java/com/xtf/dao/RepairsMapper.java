package com.xtf.dao;

import com.xtf.po.Repairs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RepairsMapper {
    int deleteByPrimaryKey(Integer repairsId);

    int insert(Repairs record);

    int insertSelective(Repairs record);

    Repairs selectByPrimaryKey(Integer repairsId);

    int updateByPrimaryKeySelective(Repairs record);

    int updateByPrimaryKey(Repairs record);

    List<Repairs> selectListRep(@Param(value = "startPos") Integer startPos,
                                @Param(value = "pageSize") Integer pageSize);

    List<Repairs> selectByName(String repairsName);

    long getCountRep();
}