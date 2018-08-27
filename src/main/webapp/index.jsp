<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/20
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link href="css/menu.css" rel="stylesheet" type="text/css"/>
</head>
<body>
         <div id="top">
             <a href="index.jsp"><img src="/img/blue.png" width="1000px" /></a>
         </div>

         <div id="navigation">
           <ul>
             <li><a href="index.jsp">首页</a></li>
             <li><a href="/user/register">注册</a></li>
             <li><a href="/user/login">登陆</a> <br></li>
             <li><a href="/user/showUsers">显示用户</a></li>
             <li><a href="/book/searchBook?nowPage=1" >图书查询</a> </li>
              <li><a href="/user/test">测试页面</a></li>
           </ul>
         </div>
</body>
</html>
