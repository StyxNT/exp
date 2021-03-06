package com.ssm.controller;

import com.ssm.pojo.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RegisterController {


    @Autowired
    private UserService userService;

    @RequestMapping("/toRegister")
    public String toRegister()
    {
        return "register";
    }

    @RequestMapping("/doRegister")
    @ResponseBody
    public String doRegister(@RequestBody User user)
    {
        System.out.println(user);
        return String.valueOf(userService.addUser(user));
    }

}
