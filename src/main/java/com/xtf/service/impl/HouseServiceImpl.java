package com.xtf.service.impl;

import com.xtf.dao.HouseMapper;
import com.xtf.po.House;
import com.xtf.service.HouseService;
import com.xtf.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class HouseServiceImpl implements HouseService{

    @Autowired
    private HouseMapper houseMapper;

    @Override
    public int deleteByPrimaryKey(String houseId) {
        houseMapper.deleteByPrimaryKey(houseId);
        return 0;
    }

    @Override
    public int insert(House record) {
        houseMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(House record) {
        houseMapper.insertSelective(record);
        return 0;
    }

    @Override
    public House selectByPrimaryKey(String houseId) {

        return houseMapper.selectByPrimaryKey(houseId);
    }

    @Override
    public int updateByPrimaryKeySelective(House record) {
        houseMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(House record) {
        houseMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<House> selectListHouse(House record) {
        List<House> list = new ArrayList<>();
        list = houseMapper.selectListHouse(record);
        return list;
    }

    @Override
    public House selectByHouseNum(String houseId) {
        return houseMapper.selectByHouseNum(houseId);
    }

    @Override
    public void showHouseByPage(HttpServletRequest request, Model model) {

        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<House> list = new ArrayList<>();

        int totalCount = (int) houseMapper.getHouseCount();

        if (pageNow != null) {
            page = new Page(totalCount,Integer.parseInt(pageNow));

            list = houseMapper.selectHouseByPage(page.getStartPos(),page.getPageSize());
        } else {
            page = new Page(totalCount, 1);

            list = houseMapper.selectHouseByPage(page.getStartPos(),page.getPageSize());
        }

        model.addAttribute("house", list);

        model.addAttribute("page", page);
    }
}
