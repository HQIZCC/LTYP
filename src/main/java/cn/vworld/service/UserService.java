package cn.vworld.service;

import cn.vworld.bean.User;
import cn.vworld.bean.UserInfo;
import org.apache.ibatis.annotations.Param;

public interface UserService {

    User findUserByU_P(String username, String password);

    User findUserByU_P_simple(String username, String password);

    void regist(User user, UserInfo userInfo);

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
}
