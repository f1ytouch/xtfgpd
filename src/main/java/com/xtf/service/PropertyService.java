package com.xtf.service;

import com.xtf.po.Property;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface PropertyService {
    int deleteByPrimaryKey(Integer propertyId);

    int insert(Property record);

    int insertSelective(Property record);

    Property selectByPrimaryKey(Integer propertyId);

    int updateByPrimaryKeySelective(Property record);

    int updateByPrimaryKey(Property record);

    List<Property> selectListPro(Property record);

    List<Property> selectByPropertyNum(String propertyNum);

    void showPropertyByPage(HttpServletRequest request, Model model);
}
