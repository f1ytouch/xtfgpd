package com.xtf.service.impl;

import com.xtf.dao.PropertyMapper;
import com.xtf.po.Property;
import com.xtf.service.PropertyService;
import com.xtf.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class PropertyServiceImpl implements PropertyService {

    @Autowired
    private PropertyMapper propertyMapper;

    @Override
    public int deleteByPrimaryKey(Integer propertyId) {
        propertyMapper.deleteByPrimaryKey(propertyId);
        return 0;
    }

    @Override
    public int insert(Property record) {
        propertyMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Property record) {
        propertyMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Property selectByPrimaryKey(Integer propertyId) {
        return propertyMapper.selectByPrimaryKey(propertyId);
    }

    @Override
    public int updateByPrimaryKeySelective(Property record) {
        propertyMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Property record) {
        propertyMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public List<Property> selectListPro(Property record) {
        List<Property> list = new ArrayList<>();
        list = propertyMapper.selectListPro(record);
        return list;
    }

    @Override
    public List<Property> selectByPropertyNum(String propertyNum) {
        return propertyMapper.selectByPropertyNum(propertyNum);
    }

    @Override
    public void showPropertyByPage(HttpServletRequest request, Model model) {

        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<Property> list = new ArrayList<>();

        int totalCount = (int) propertyMapper.getPropertyCount();

        if (pageNow != null) {

            page = new Page(totalCount,Integer.parseInt(pageNow));

            list = propertyMapper.selectPropertyByPage(page.getStartPos(),page.getPageSize());
        } else {

            page = new Page(totalCount,1);

            list = propertyMapper.selectPropertyByPage(page.getStartPos(),page.getPageSize());
        }

        model.addAttribute("pro",list);

        model.addAttribute("page",page);
    }
}
