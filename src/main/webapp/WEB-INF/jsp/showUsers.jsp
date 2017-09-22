<%@ page import="java.util.Iterator" %>
<%@ page import="com.pojo.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/8/15
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示所有用户</title>
</head>
<body>

       <%
       List<User> userList=(List<User>) request.getAttribute("userList");
       Iterator<User> iterator;
       for(iterator=userList.iterator();iterator.hasNext();) {
               User user=iterator.next();
               System.out.println(user.getAge()+" "+user.getUserName());
       %>
         用户id:  <%= user.getId() %> ，
         账户:  <%= user.getUserName() %> ，
         年龄: <%= user.getAge() %> <br>
       <%
       }
       %>
</body>
</html>
