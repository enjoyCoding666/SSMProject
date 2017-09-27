package com.dao;

import com.model.User;

import java.util.List;

public interface UserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User user);

    int insertSelective(User user);

    User selectByPrimaryKey(Integer id);

    List<User> selectAllUsers();

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User user);


}