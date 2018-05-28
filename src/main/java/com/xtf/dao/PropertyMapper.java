package com.xtf.dao;

import com.xtf.po.Property;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PropertyMapper {
    int deleteByPrimaryKey(Integer propertyId);

    int insert(Property record);

    int insertSelective(Property record);

    Property selectByPrimaryKey(Integer propertyId);

    int updateByPrimaryKeySelective(Property record);

    int updateByPrimaryKey(Property record);

    List<Property> selectListPro(Property record);

    List<Property> selectByPropertyNum(String propertyNum);

    float countCost(Property property);

    float countSumByNameDate(Property property);

    long getPropertyCount();

    List<Property> selectPropertyByPage(@Param(value = "startPos") Integer startPos,
                                        @Param(value = "pageSize") Integer pageSize);

}