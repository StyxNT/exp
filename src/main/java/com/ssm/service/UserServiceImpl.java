package com.ssm.service;

import com.ssm.dao.UserMapper;
import com.ssm.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public User getUserById(int id) {
        return userMapper.getUserById(id);
    }

    @Override
    public List<User> getAllUsers()
    {
        return userMapper.getAllUsers();
    }

    @Override
    public int deleteUser(int id)
    {
        return userMapper.deleteUser(id);
    }
}
