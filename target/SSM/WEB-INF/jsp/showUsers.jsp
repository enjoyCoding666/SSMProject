<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.model.User" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示所有用户</title>
</head>
<body>
     <c:forEach var="user" items="${ requestScope.userList }">
           <p>用户id:${user.getId()}</p>
           <p>用户名:${user.getUserName()}</p>
           <p>年龄:${user.getAge()}</p>
     </c:forEach>

</body>
</html>
