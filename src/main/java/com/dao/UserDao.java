package com.dao;

import com.model.User;

import java.util.List;

/**
 * Dao里面的每个方法，分别对应mapper文件里面的sql语句
 */
public interface UserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User user);

    int insertSelective(User user);

    User selectByPrimaryKey(Integer id);

    List<User> selectAllUsers();

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User user);

    List<User> selectBookInfoByUserId();
}