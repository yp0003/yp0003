package com.yfann.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfann.web.dao.UserMapper;
import com.yfann.web.pojo.User;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.MailContext;
@Service
public class SystemServiceImpl implements SystemService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public void saveUser(User user) throws Exception {
        if (user != null) {
            userMapper.insert(user);
        }
    }

    @Override
    public User validateUser(User user) {
        List<User> userList = userMapper.selectUserByUserId(user.getUserId());
        if (userList != null && !userList.isEmpty())
            return userList.get(0);
        else
            return null;
    }

    @Override
    public void updateUser(User user) throws Exception {
        userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public void sendMail(User user, MailContext mailContext) {
        //TODO DO sends emal
    }


    /**
     * 验证用户
     *
     * @param user
     * @return
     */
    @Override
    public User valiDateLogin(User user) {
        Map<String, Object> parames = getParames(user);
        User userInfo = userMapper.selectLoginUserByParames(parames);
        return userInfo;
    }

    private Map<String, Object> getParames(User user) {
        Map<String, Object> parames = new HashMap<String, Object>();
        if (user != null) {
            /*用户名*/
            if (StringUtils.isNotBlank(user.getUserName())) {
                parames.put("userName", user.getUserName());
            }
            /*密码*/
            if (StringUtils.isNotBlank(user.getNowPassword())) {
                parames.put("nowPassword", user.getNowPassword());
            }
        }
        return parames;
    }
}
