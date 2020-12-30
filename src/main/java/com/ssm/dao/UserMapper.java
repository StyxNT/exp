package com.ssm.dao;

import com.ssm.pojo.User;

public interface UserMapper {
    public int addUser(User user);
    public int updateUser(User user);
    public User getUserById(int id);
}
