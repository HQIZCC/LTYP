package cn.vworld.controller;

import cn.vworld.service.UserService;
import cn.vworld.utils.SendMail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    //发送激活邮件
    @RequestMapping("/sendMail")
    public String sendMail(Model model, String userId, @RequestParam("email") String to){
        String validateUrl = "";
        try {
            SendMail.sendMail(to, validateUrl);
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "发送邮件出错，请联系管理员！");
            return "显示信息的网址";
        }
        return "输入注册成功的页面";
    }
    //激活邮件页面
    @RequestMapping("/activateAccount")
    public String activateAccount(Model model, String userId){
        userService.updateState(userId);
        model.addAttribute("msg", "账号激活成功！");
        return "显示信息的页面";
    }
    //管理员修改用户禁用状态
    @RequestMapping("/updateBan")
    public String updateBan(String userId, @RequestParam("ban") String b){
        Integer ban = Integer.parseInt(b);
        userService.updateBan(userId, ban);
        return "用户列表页面";
    }





















































































































}
