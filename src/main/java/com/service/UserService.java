package com.service;

import com.pojo.User;

import java.util.List;

/**
 * Created by lenovo on 2017/8/7.
 */
public interface UserService {
    public User getUserById(int userId);
    public List<User> showUsers();
    public void insertUser(User user);
}
