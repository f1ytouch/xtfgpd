package com.xtf.dao;

import com.xtf.po.Complain;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComplainMapper {
    int deleteByPrimaryKey(Integer complainId);

    int insert(Complain record);

    int insertSelective(Complain record);

    Complain selectByPrimaryKey(Integer complainId);

    int updateByPrimaryKeySelective(Complain record);

    int updateByPrimaryKey(Complain record);

    List<Complain> findListCompain(@Param(value = "startPos") Integer startPos,
                         @Param(value = "pageSize") Integer pageSize);

    List<Complain> selectBycomplainNum(Integer complainNum);

    long getCountComplain();
}