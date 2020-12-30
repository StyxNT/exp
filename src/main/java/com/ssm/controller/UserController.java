package com.ssm.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/doUpdateUser")
    public String doUpdateUser(@RequestBody User user)
    {
        System.out.println(user);
        return String.valueOf(userService.updateUser(user));
    }

    @RequestMapping("/getUserById")
    @ResponseBody
    public String getUserById()
    {
        int testId=1;
        ObjectMapper mapper = new ObjectMapper();
        User user =userService.getUserById(testId);
        String result = null;
        try {
            result = mapper.writeValueAsString(user);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return result;
    }

}
