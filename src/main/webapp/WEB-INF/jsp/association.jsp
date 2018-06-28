<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <p> Mybatis关联查询，如下所示：</p>
   <p>sql语句：  select   b.book_id,b.name,b.publishers,a.id,a.user_name
       from user_t  a
       inner join book_t  b on b.book_id=a.id</p>
   <table border="1"  >
       <tr>
           <td> userId </td>
           <td> userName </td>
           <td> bookName </td>
           <td> bookPublishers </td>
       </tr>
    <c:forEach var="user" items="${requestScope.userList}">
        <tr>
            <td> ${  user.id }</td>
            <td>  ${ user.userName }</td>
            <td> ${  user.book.name }  </td>
            <td>  ${ user.book.publishers  }   </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
