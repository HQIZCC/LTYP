package cn.vworld.service;

import cn.vworld.bean.User;
import cn.vworld.bean.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;


public interface UserService {
    //通过用户名和密码找到用户的详细信息
    User findUserByU_P(String username, String password);

    User findUserByU_P_simple(String username, String password);



    /**
     * 修改账户邮箱激活状态
     * @param userId 用户名
     */
    void updateState(String userId);

    /**
     * 修改用户账号禁用状态（是否被禁用）
     * @param userId 用户名
     * @param ban 禁用字段
     */
    void updateBan(String userId, Integer ban);

    /**
     * 注册用户
     * @param user  读到的user对象信息
     * @param userInfo 读到的userInfo对象信息
     */
    void saveUser(User user, UserInfo userInfo);
}
