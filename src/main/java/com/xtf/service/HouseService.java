package com.xtf.service;

import com.xtf.po.House;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface HouseService {
    int deleteByPrimaryKey(String houseId);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(String houseId);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);

    List<House> selectListHouse(House record);

    House selectByHouseNum(String houseId);

    void showHouseByPage(HttpServletRequest request, Model model);
}
