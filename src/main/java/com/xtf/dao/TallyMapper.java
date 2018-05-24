package com.xtf.dao;

import com.xtf.po.Tally;

public interface TallyMapper {
    int deleteByPrimaryKey(Integer tallyId);

    int insert(Tally record);

    int insertSelective(Tally record);

    Tally selectByPrimaryKey(Integer tallyId);

    int updateByPrimaryKeySelective(Tally record);

    int updateByPrimaryKey(Tally record);
}