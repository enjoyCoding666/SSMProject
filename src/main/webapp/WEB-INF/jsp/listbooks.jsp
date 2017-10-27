<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/10/27
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

     <c:forEach var="book" items="${requestScope.bookList}">
          <table border="1">
              <tr>
                  <td> ${  book.getBookId() }</td>
                  <td>  ${ book.getType() }</td>
                  <td>  ${ book.getAuthor()} </td>
                  <td> ${  book.getPublishers() }    </td>
                  <td> ${   book.getBorrowdate() } </td>
              </tr>
          </table>
     </c:forEach>
</body>
</html>
