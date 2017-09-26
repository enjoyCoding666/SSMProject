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
    <%
        String registerResult=(String)request.getAttribute("registerResult");
        if(registerResult.equals("registerSuccess")) {
    %>
         注册成功.<br>
         用户数据如下所示： <br>
         用户id: ${user.id} <br>
         账号:  ${user.userName} <br>
         年龄:  ${user.age}
         <br><br>

        <%
        }else if(registerResult.equals("registerError")) {
         %>

             <p>输入的内容不允许为空。请补充完整</p>

         <%
          }else {
         %>

             <p>用户已存在。请改用其他用户id或用户名.</p>
     <%

          }
      %>



    <a href="/user/register">返回注册界面</a>
    <a href="/user/login">返回登陆界面</a>
    <a href="/index.jsp">返回首页</a>
</body>
</html>
