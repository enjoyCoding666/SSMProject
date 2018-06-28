package com.serviceImp;

import com.aop.Interceptor;
import com.dao.UserDao;
import com.model.Book;
import com.model.User;
import com.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Iterator;
import java.util.List;

/**
 * Created by lenovo on 2017/8/10.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    private int id;
    private String account;
    private String password;
    private int age;


    /**
     * @param user
     * @return
     * 插入用户数据到数据库。检验是否已存在相同的用户id、用户名,返回相应的错误信息
     */
    @Override
    public String insertUser(User user) {
         id=user.getId();
         account=user.getUserName();
         password=user.getPassword();
         age=user.getAge();
         String registerResult="registerSuccess";
         if(StringUtils.isEmpty(account) || StringUtils.isEmpty(password) ) {
             registerResult= "registerError";
         }
         List<User> userList=showUsers();
        Iterator iterator=userList.iterator();
        while (iterator.hasNext()) {
            User oldUser=(User) iterator.next();
            int oldId=oldUser.getId();
            String oldAccount=oldUser.getUserName();
            if(id==oldId || account.equals(oldAccount) ) {
                registerResult= "registerExistedUser";
            }

        }
         if("registerSuccess" .equals(  registerResult))  {
             this.userDao.insert(user);
         }
         return registerResult;
    }

    @Override
    public List<User> selectBookInfoByUserId() {
            List<User> userList=userDao.selectBookInfoByUserId();
//            for(User user : userList) {
//                String name=user.getUserName();
//                List<Book> bookList=user.getBookList();
//
//            }
            return userList;

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