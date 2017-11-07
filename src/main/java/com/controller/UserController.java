package com.controller;

import com.model.User;
import com.serviceImp.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
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


    //显示所有的用户
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
        User user=new User(id,account,password,age);
        String registerResult=this.userService.insertUser(user);
        //设置属性，便于在前端页面获取数据
        request.setAttribute("user",user);
        request.setAttribute("registerResult",registerResult);
        return "registerFinish";
    }

    //尝试从页面获取参数到后台
    @RequestMapping("/param")
    public String testRequestParam(@RequestParam(value="userId") Integer id,
                                   @RequestParam(value="account")String userName,@RequestParam(value="age")int age,
                                   @RequestParam(value = "password")String password,HttpServletRequest request){
        User user=new User(id,userName,password,age);
        request.setAttribute("user",user);
        return "registerFinish";
    }

    @RequestMapping("/test")
    public String toTest(){

        return "test";
    }

    @RequestMapping("/{account}")
    public  String testParam(@PathVariable("account") String useName){
        System.out.println(useName);
         return  "test";
    }

    @RequestMapping("/register")
    public String toRegister() {
        return "register";
    }


    @RequestMapping("/login")
    public String toLogin(){
        return "login";
    }

    @RequestMapping(value = "/upload")
    public String uploadPage(){
        return "upload";
    }

    @RequestMapping(value = "/uploadId" ,method = RequestMethod.POST)
    public  String upload(HttpServletRequest request) throws IOException{
        MultipartHttpServletRequest mRequest=(MultipartHttpServletRequest) request;
        MultipartFile file=mRequest.getFile("file");
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String fileName=file.getOriginalFilename();
        String localFile=request.getSession().getServletContext().getRealPath("/")
                +"uploadId\\"+sdf.format(new Date())+fileName.substring(fileName.lastIndexOf("."));
        FileOutputStream fos=new FileOutputStream( localFile.replaceAll("\\\\","\\\\\\\\") );
        fos.write(file.getBytes());
        fos.flush();
        fos.close();
        return "test";
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


    @ResponseBody
    @RequestMapping(value = "/searchUser",method = RequestMethod.POST)
    public User searchUser(HttpServletRequest request) {
        int userId=Integer.parseInt(request.getParameter("id"));
        User user=this.userService.getUserById(userId);
        return  user;
    }

    @RequestMapping(value = "/toAjax",method = RequestMethod.GET)
    public String toAjax(){
        return "ajax";
    }
}