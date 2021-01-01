package com.ssm.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

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

    @RequestMapping("/getUserBySession")
    @ResponseBody
    public String getUserBySession()
    {
        int testId=3;
        ObjectMapper objectMapper = new ObjectMapper();
        User user =userService.getUserById(testId);
        String result = null;
        try {
            result = objectMapper.writeValueAsString(user);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("/getAllUsers")
    @ResponseBody
    public String getAllUsers()
    {
        ObjectMapper objectMapper=new ObjectMapper();
        String result=null;
        try {
            result=objectMapper.writeValueAsString(userService.getAllUsers());
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("/doDeleteUser")
    @ResponseBody
    public String deleteUser(@RequestBody HashMap<String, String> map)
    {
        System.out.println(map.get("id"));
        return String.valueOf(userService.deleteUser(Integer.parseInt(map.get("id"))));
    }

    @RequestMapping("/getUserById")
    @ResponseBody
    public String getUserById(@RequestBody HashMap<String, Integer> map)
    {
        ObjectMapper objectMapper = new ObjectMapper();
        User user =userService.getUserById(map.get("id"));
        String result = null;
        try {
            result = objectMapper.writeValueAsString(user);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return result;
    }

}
