package com.controller;

import com.pojo.User;
import com.serviceImp.UserServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by lenovo on 2017/8/7.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name = "userService")
    private UserServiceImpl userService;

    //根据用户id查询用户信息
    //通过  http://localhost:8080/user/showUser?id=1访问
    @RequestMapping("/showUser")
    public String toIndex(HttpServletRequest request, Model model){
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.userService.getUserById(userId);
        model.addAttribute("user", user);
        return "showUser";
    }

    //查询所有的用户
    @RequestMapping("/showUsers")
    public String toShowUsers(HttpServletRequest request) {
        List<User> userList;
        userList=this.userService.showUsers();
        request.setAttribute("userList",userList);
        return "showUsers";
    }


    //在数据库中插入表单提交的新用户数据
    @RequestMapping("/insert")
    public  String toInsert(@RequestParam(value="userId") int id,
                            @RequestParam(value="account")String account,@RequestParam(value="age")int age,
                            @RequestParam(value = "password")String password,HttpServletRequest request, Model model) {
        if(StringUtils.isEmpty(account) || StringUtils.isEmpty(password)) {
            return "registerError";
        }
        User user=new User(id,account,password,age);
        this.userService.insertUser(user);
        request.setAttribute("user",user);        //设置属性，便于在前端页面获取数据
        return "finishRegister";
    }

    //尝试从页面获取参数到后台
    @RequestMapping("/param")
    public String testRequestParam(@RequestParam(value="userId") Integer id,
                                   @RequestParam(value="account")String userName,@RequestParam(value="age")int age,
                                   @RequestParam(value = "password")String password,HttpServletRequest request){
        User user=new User(id,userName,password,age);
        request.setAttribute("user",user);
        return "finishRegister";
    }

    @RequestMapping("/test")
    public String toTest(){

        return "test";
    }

    @RequestMapping("/register")
    public String toRegister() {

        return "register";
    }


    @RequestMapping("/login")
    public String toLogin(){

        return "login";
    }

//返回json数据
    @ResponseBody
    @RequestMapping("/json")
    public  User getJson(){
        User user=new User();
        user.setAge(30);
        user.setId(22);
        user.setUserName("feng");
        user.setPassword("feng");
        return  user;
    }
}