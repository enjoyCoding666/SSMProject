<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

       <c:set var="registerResult" value="${requestScope.registerResult}"/>
       <c:set var="registerSuccess" value="registerSuccess"/>
       <c:set var="registerError" value="registerError"/>
      <c:set var="registerExistedUser" value="registerExistedUser"/>

       <c:choose>
           <c:when test="${ registerResult eq registerSuccess }">
               注册成功.<br>
               用户数据如下所示： <br>
               用户id: ${user.id} <br>
               账号:  ${user.userName} <br>
               年龄:  ${user.age}
               <br><br>
           </c:when>
           <c:when test="${ registerResult eq registerError }" >
               <p>输入的内容不允许为空。请补充完整</p>
           </c:when>
           <c:when test="${ registerResult eq registerExistedUser }" >
               <p>用户已存在。请改用其他用户id或用户名.</p>
           </c:when>
       </c:choose>
    
    <a href="/user/register">返回注册界面</a>
    <a href="/user/login">返回登陆界面</a>
    <a href="/index.jsp">返回首页</a>
</body>
</html>
