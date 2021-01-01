package com.ssm.dao;

import com.ssm.pojo.User;

import java.util.List;

public interface UserMapper {
    public int addUser(User user);
    public int updateUser(User user);
    public User getUserById(int id);
    public List<User> getAllUsers();
    public int deleteUser(int id);
}
