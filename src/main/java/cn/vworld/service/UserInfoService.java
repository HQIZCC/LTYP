package cn.vworld.service;

import cn.vworld.bean.UserInfo;

public interface UserInfoService {

    UserInfo findUserInfoById(String userInfoId);

    void updateUserInfo(UserInfo userInfo);
}
