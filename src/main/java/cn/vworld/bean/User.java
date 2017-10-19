package cn.vworld.bean;

public class User extends BaseEntity{
    private String userId;      //用户ID
    private String username;    //用户名
    private String password;    //用户密码
    private Integer state;      //用户状态 邮箱已验证为1，否则为0
    private Integer ban;        //  1代表禁用',0启用

    private UserInfo userInfo;  //用户信息
    private Role role;          //用户角色信息


    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }



    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getBan() {
        return ban;
    }

    public void setBan(Integer ban) {
        this.ban = ban;
    }
}
