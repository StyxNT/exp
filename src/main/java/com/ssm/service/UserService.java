package com.ssm.service;

import com.ssm.pojo.User;

public interface UserService {
    public int addUser(User user);
    public int updateUser(User user);
    public User getUserById(int id);
}
