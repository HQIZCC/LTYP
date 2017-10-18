package cn.vworld.mapper;

import cn.vworld.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    User findUserByU_P(String username, String password);

    User findUserByU_P_simple(@Param("username") String username,@Param("password") String password);

    void regist(User user);

    void updateState(String userId);

    void updateBan(@Param("userId") String userId, @Param("ban") Integer ban);
}
