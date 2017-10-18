package cn.vworld.service;

import cn.vworld.bean.User;
import cn.vworld.bean.UserInfo;

public interface UserService {

    User findUserByU_P(String username, String password);

    User findUserByU_P_simple(String username, String password);

    void regist(User user, UserInfo userInfo);
}
