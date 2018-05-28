package com.xtf.service.impl;

import com.xtf.dao.CarportMapper;
import com.xtf.po.Carport;
import com.xtf.service.CarportService;
import com.xtf.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class CarportServiceImpl implements CarportService {


    @Autowired
    private CarportMapper carportMapper;

    @Override
    public int deleteByPrimaryKey(Integer carportId) {
        carportMapper.deleteByPrimaryKey(carportId);
        return 0;
    }

    @Override
    public int insert(Carport record) {
        carportMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Carport record) {
        carportMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Carport selectByPrimaryKey(Integer carportId) {
        Carport carport = carportMapper.selectByPrimaryKey(carportId);
        return carport;
    }

    @Override
    public int updateByPrimaryKeySelective(Carport record) {
        carportMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Carport record) {
        carportMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Carport> findListCarport(Carport record) {
        List<Carport> list = carportMapper.findListCarport(record);
        return list;
    }

    @Override
    public void showCarportByPage(HttpServletRequest request, Model model) {

        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<Carport> list = new ArrayList<>();

        int totalCount = (int) carportMapper.getCarportCount();

        if (pageNow != null) {
            page = new Page(totalCount,Integer.parseInt(pageNow));

            list = carportMapper.selectCarportByPage(page.getStartPos(),page.getPageSize());
            page = new Page(totalCount, 1);
            list = carportMapper.selectCarportByPage(page.getStartPos(),page.getPageSize());
        }

        model.addAttribute("car", list);

        model.addAttribute("page", page);
    }
}
