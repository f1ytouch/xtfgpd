package com.xtf.service.impl;

import com.xtf.dao.PropertyMapper;
import com.xtf.dao.TallyMapper;
import com.xtf.po.DateCount;
import com.xtf.po.Property;
import com.xtf.po.Tally;
import com.xtf.service.TallyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TallyServiceImpl implements TallyService {

    @Autowired
    private TallyMapper tallyMapper;

    @Autowired
    private PropertyMapper propertyMapper;

    @Override
    public int insertSelective(Tally record) {
        Property property = new Property();
        property.setPropertyName("物业管理费");
        property.setPropertyChargedate("2018-05");
        property.setPropertyState("已支付");
        float fact = propertyMapper.countCost(property);

        Property property1 = new Property();
        property1.setPropertyName("物业管理费");
        property1.setPropertyChargedate("2018-5");
        float must = propertyMapper.countSumByNameDate(property1);


        return 0;
    }



    @Override
    public List<DateCount> countNearThreeMonth() {
        List<DateCount> list = new ArrayList<>();
        DateCount dateCount = new DateCount();
        dateCount.setName("物业管理费");

        Property property = new Property();
        property.setPropertyName("物业管理费");
        property.setPropertyChargedate("2018-03");
        property.setPropertyState("已支付");
        float one = propertyMapper.countCost(property);

        property.setPropertyChargedate("2018-04");

        float two = propertyMapper.countCost(property);

        property.setPropertyChargedate("2018-05");

        float three = propertyMapper.countCost(property);

        dateCount.setOne(one);
        dateCount.setTwo(two);
        dateCount.setThree(three);

        list.add(dateCount);

        DateCount dateCount1 = new DateCount();
        dateCount1.setName("车位费月租");

        Property property1 = new Property();
        property1.setPropertyName("车位费月租");
        property1.setPropertyChargedate("2018-03");
        property1.setPropertyState("已支付");
        float one1 = propertyMapper.countCost(property1);

        property1.setPropertyChargedate("2018-04");

        float two1 = propertyMapper.countCost(property1);

        property1.setPropertyChargedate("2018-05");

        float three1 = propertyMapper.countCost(property1);

        dateCount1.setOne(one1);
        dateCount1.setTwo(two1);
        dateCount1.setThree(three1);

        list.add(dateCount1);





        return list;
    }
}
