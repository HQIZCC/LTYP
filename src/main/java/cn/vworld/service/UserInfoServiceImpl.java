package cn.vworld.service;

import cn.vworld.bean.UserInfo;
import cn.vworld.mapper.UserInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserInfoServiceImpl implements UserInfoService{

    @Autowired
    private UserInfoMapper userInfoMapper;
    public UserInfo findUserInfoById(String userInfoId){
        System.out.println(userInfoId);
        return userInfoMapper.findUserInfoById(userInfoId);
    }

    @Override
    public void updateUserInfo(UserInfo userInfo) {
        userInfoMapper.updateUserInfoByUser(userInfo);
    }
}
