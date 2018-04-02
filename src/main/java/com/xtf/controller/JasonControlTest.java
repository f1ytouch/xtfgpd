package com.xtf.controller;

import com.xtf.po.UserCustom;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class JasonControlTest {

    @RequestMapping("/requestJson.do")
    public @ResponseBody
    UserCustom requestJson(@RequestBody UserCustom userCustom) throws Exception {
        return userCustom;
    }

//    请求key/values
    @RequestMapping("/responsetJson")
    public @ResponseBody
    UserCustom responsetJson(UserCustom userCustom) throws Exception {
        return userCustom;
    }
}
