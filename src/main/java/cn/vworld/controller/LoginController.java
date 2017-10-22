package cn.vworld.controller;

import cn.vworld.bean.User;
import cn.vworld.bean.UserInfo;
import cn.vworld.service.UserInfoService;
import cn.vworld.service.UserService;
import cn.vworld.tool.Md5HashPassword;
import com.sun.deploy.net.HttpResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private UserService userService;

    @RequestMapping("/signin")
    public String signIn(String username, String password, Model model) {
        return "/login/sign-in";
    }

    //点击登录页面后的操作
    @RequestMapping(value = "/login")
    public String login(Model model, String username, String password, HttpSession session) {
//        User user= userService.findUserByU_P(username, password);
        //通过username和password来查询数据库
      /*  User user= userService.findUserByU_P(username, password);
        if (user != null) {
            model.addAttribute("user", user);
            session.setAttribute("user_login",user);
            return "redirect:/movie/showmovie";
        }
        return "/login/signin";*/
        //判断用户名和密码是否为空
        if(StringUtils.isEmpty(username) || StringUtils.isEmpty(password)){
            //表示用户名和密码为空
            model.addAttribute("errorInfo", "用户名或密码不能为空");

            //跳转到用户登陆页面
            return "/login/sign-in";
        }

        //通过subject进行登陆操作
        Subject subject = SecurityUtils.getSubject();
        //String md5HashPassword = Md5HashPassword.getMd5Hash(password, username);
        //token 票令牌   作用包装用户名和密码的     狮子精  大象精  大鹏鸟  小钻风
        password = Md5HashPassword.getMd5Hash(password, username);
        System.out.println(password);
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

        //如果用户登陆不正确  则shiro会报错，如果用户名和密码正确 则执行下一行代码，如果登陆正确，
        //shiro则会放行当前subject的全部请求
        try {
            subject.login(token);

            //获取用户真实信息
            User user = (User) subject.getPrincipal();
            //将用户信息存入session域
            session.setAttribute("user_login", user);

            //subject.getSession().setAttribute("userSession", user);   subject获取session
            return "redirect:/movie/showmovie";
        } catch (AuthenticationException e) {
            e.printStackTrace();  //打印报错信息  查询真实的报错
            //表示用户名和密码不正确
            model.addAttribute("errorInfo", "用户名或密码不正确");
            return "/login/sign-in";
        }

    }
    //转到注册页面
    @RequestMapping("/signup")
    public String signUp() {
        return "/login/sign-up";
    }

    //转到忘记密码页面
    @RequestMapping("/forgetPassword")
    public String forgetPassword() {
        return "/login/reset-password";
    }

    //注册操作
    @RequestMapping("/regist")
    public String saveUser(User user, UserInfo userInfo) {
        userService.saveUser(user,userInfo);
        return "redirect:/login/signin";
    }

    /**
     * Ajax异步查询数据库 判断用户名是否被占用
     * @param response
     * @param request
     * @throws IOException
     */
    @RequestMapping(value = "/AjaxCheckUsername",method = RequestMethod.POST)
    public void checkUsername(HttpServletResponse response, HttpServletRequest request) throws IOException {
       String username = request.getParameter("username");
        User result =  userService.checkUsername(username);
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write(result!=null?"用户名已存在!":"恭喜您!用户名可以使用");
    }








}
