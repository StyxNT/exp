package com.ssm.service;

import com.ssm.pojo.User;

import java.util.List;

public interface UserService {
    public int addUser(User user);
    public int updateUser(User user);
    public User getUserById(int id);
    public List<User> getAllUsers();
    public int deleteUser(int id);

}
