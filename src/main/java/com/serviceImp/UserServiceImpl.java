package com.serviceImp;

import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/8/10.
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    @Override
    public void insertUser(User user) {
         this.userDao.insert(user);
    }

    @Override
    public User getUserById(int userId) {
        // TODO Auto-generated method stub
        return this.userDao.selectByPrimaryKey(userId);
    }

    @Override
    public List<User> showUsers() {
        return this.userDao.selectAllUsers();
    }
}