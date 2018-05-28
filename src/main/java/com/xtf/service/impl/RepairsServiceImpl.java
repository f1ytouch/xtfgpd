package com.xtf.service.impl;


import com.xtf.po.Repairs;
import com.xtf.dao.RepairsMapper;
import com.xtf.service.RepairsService;
import com.xtf.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class RepairsServiceImpl implements RepairsService{


    @Autowired
    private RepairsMapper requestMapping;

    @Override
    public int deleteByPrimaryKey(Integer repairsId) {
        requestMapping.deleteByPrimaryKey(repairsId);
        return 0;
    }

    @Override
    public int insert(Repairs record) {
        requestMapping.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Repairs record) {
        return 0;
    }

    @Override
    public Repairs selectByPrimaryKey(Integer repairsId) {
        Repairs repairs = requestMapping.selectByPrimaryKey(repairsId);
        return repairs;
    }

    @Override
    public int updateByPrimaryKeySelective(Repairs record) {
        requestMapping.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateRepairs(Integer id, Repairs record) {
        requestMapping.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public List<Repairs> selectByName(String repairsName) {
        return requestMapping.selectByName(repairsName);
    }

    @Override
    public int updateByall(Repairs record) {
        requestMapping.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Repairs> selectListRep(HttpServletRequest request, Model model) {
        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<Repairs> list = new ArrayList<>();

        int totalCount = (int) requestMapping.getCountRep();

        if (pageNow != null) {
            page = new Page(totalCount,Integer.parseInt(pageNow));

            list = requestMapping.selectListRep(page.getStartPos(),page.getPageSize());
        } else {
            page = new Page(totalCount, 1);

            list = requestMapping.selectListRep(page.getStartPos(),page.getPageSize());
        }

        model.addAttribute("page",page);

        model.addAttribute("repairs",list);
        return null;
    }


}
