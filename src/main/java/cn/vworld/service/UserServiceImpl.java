package cn.vworld.service;

import cn.vworld.bean.User;
import cn.vworld.bean.UserInfo;
import cn.vworld.mapper.UserInfoMapper;
import cn.vworld.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Override
    public User findUserByU_P(String username, String password) {
        return userMapper.findUserByU_P(username,password);
    }

    @Override
    public User findUserByU_P_simple(String username, String password) {
        return userMapper.findUserByU_P_simple(username,password);
    }

    @Override
    public void regist(User user,UserInfo userInfo) {
        user.setUserId(UUID.randomUUID().toString());
        user.setCreateTime(new Date());
        user.setState(0);
        user.setBan(0);
        userMapper.regist(user);
        userInfo.setUserInfoId(user.getUserId());
        userInfo.setCreateTime(new Date());
        userInfoMapper.saveUserInfo(userInfo);
    }
}
