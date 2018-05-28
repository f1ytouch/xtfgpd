package com.xtf.service.impl;

import com.xtf.dao.UserMapper;
import com.xtf.dao.UserMapperCustom;
import com.xtf.po.User;
import com.xtf.po.UserCustom;
import com.xtf.po.UserQueryVo;
import com.xtf.service.UserService;
import com.xtf.utils.Page;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserMapperCustom userMapperCustom;

    @Override
    public UserCustom findUserById(Integer id) {
        User user = userMapper.selectByPrimaryKey(id);
        UserCustom userCustom = new UserCustom();
        BeanUtils.copyProperties(user, userCustom);
        return userCustom;
    }

    @Override
    public List<UserCustom> findUserList(UserQueryVo userQueryVo) throws Exception {
        List<UserCustom> list = new ArrayList<UserCustom>();
//        UserCustom userCustom = new UserCustom();
//        UserQueryVo userQueryVo1 = new UserQueryVo();
//        userQueryVo1.setUserCustom(userCustom);
        list = userMapperCustom.findUserList(userQueryVo);
        return list;
    }

    @Override
    public void updateUser(Integer id, UserCustom userCustom) throws Exception {
        userMapper.updateByPrimaryKeySelective(userCustom);

    }

    @Override
    public void deletUser(Integer id) {

        userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void insertUser(UserCustom userCustom) throws Exception {
        userMapper.insertSelective(userCustom);
    }

    @Override
    public void showUserByPage(HttpServletRequest request, Model model) {
        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<User> list = new ArrayList<>();

        int totalCount = (int) userMapper.getUserCount();

        if (pageNow != null) {
            page = new Page(totalCount,Integer.parseInt(pageNow));

            list = userMapper.selectUserByPage(page.getStartPos(),page.getPageSize());
        } else {
            page = new Page(totalCount, 1);
            list = userMapper.selectUserByPage(page.getStartPos(),page.getPageSize());
        }

        model.addAttribute("page",page);

        model.addAttribute("userList",list);
    }

    public void setUserMapper(UserMapper userMapper) {

        this.userMapper = userMapper;
    }

    public void setUserMapperCustom(UserMapperCustom userMapperCustom) {

        this.userMapperCustom = userMapperCustom;
    }
}
