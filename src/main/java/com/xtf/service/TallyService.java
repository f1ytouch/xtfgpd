package com.xtf.service;

import com.xtf.po.DateCount;
import com.xtf.po.Tally;

import java.util.List;

public interface TallyService {

    int insertSelective(Tally record);

    List<DateCount> countNearThreeMonth();
}
