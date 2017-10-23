package cn.vworld.bean;

public class UserInfo extends BaseEntity{

    private String userInfoId;      //userId
    private String name;            //真实名字
    private Integer age;            //年龄
    private String gender;          //性别
    private String sign;            //个性签名
    private String email;           //邮箱
    private String phone;           //手机号码
    private String hpic;            //头像
    private String nickname;        //昵称

    public String getUserInfoId() {
        return userInfoId;
    }

    public void setUserInfoId(String userInfoId) {
        this.userInfoId = userInfoId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getHpic() {
        return hpic;
    }

    public void setHpic(String hpic) {
        this.hpic = hpic;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "userInfoId='" + userInfoId + '\'' +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", sign='" + sign + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", hpic='" + hpic + '\'' +
                ", nickname='" + nickname + '\'' +
                '}';
    }
}
