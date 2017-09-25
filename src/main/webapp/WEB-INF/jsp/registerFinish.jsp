<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/8/15
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    注册成功.<br>
    用户数据如下所示： <br>
    用户id: ${user.id} <br>
    账号:  ${user.userName} <br>
    年龄:  ${user.age}
    <br><br>
    <a href="/user/login">返回登陆界面</a>
</body>
</html>
