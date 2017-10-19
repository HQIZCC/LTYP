package cn.vworld.mapper;

import cn.vworld.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    User findUserByU_P(@Param("username") String username,@Param("password") String password);

    User findUserByU_P_simple(@Param("username") String username,@Param("password") String password);


    void updateState(String userId);

    void updateBan(@Param("userId") String userId, @Param("ban") Integer ban);

    void saveUser(User user);
}
