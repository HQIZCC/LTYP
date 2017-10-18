package cn.vworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
public class TestController {

    @RequestMapping("/hello")
    @ResponseBody
    public String hello() {

        return "hello,现在是"+new Date().toLocaleString();
    }

}
