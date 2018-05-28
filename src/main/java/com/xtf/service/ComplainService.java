package com.xtf.service;

import com.xtf.po.Complain;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface ComplainService {
    int deleteByPrimaryKey(Integer complainId);

    int insert(Complain record);

    int insertSelective(Complain record);

    Complain selectByPrimaryKey(Integer complainId);

    int updateByPrimaryKeySelective(Complain record);

    int updateByPrimaryKey(Complain record);

    void findListCompain(HttpServletRequest request, Model model);

    List<Complain> selectBycomplainNum(Integer complainNum);
}
