package com.service;

import com.model.User;

import java.util.List;

/**
 * Created by lenovo on 2017/8/7.
 */
public interface UserService {
     User getUserById(int userId);
     List<User> showUsers();
     String insertUser(User user);
}
