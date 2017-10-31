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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(
        function getValue() {
            var option=$("#option");
            return option.val();
        }
    );

</script>
<body>
   <table border="1"  >
     <c:forEach var="book" items="${requestScope.bookList}">
              <tr>
                  <td> ${  book.getBookId() }</td>
                  <td>  ${ book.getType() }</td>
                  <td>  ${ book.getAuthor()} </td>
                  <td> ${  book.getPublishers() }    </td>
                  <td> ${  book.getBorrowdate() } </td>
              </tr>
     </c:forEach>
   </table>
   <a href="/book/listBook?nowPage=${requestScope.page.getPreviousPage() }">上一页</a>
   <a href="/book/listBook?nowPage=${ requestScope.page.getNextPage() }">下一页</a>
   <select id="option">
       <c:forEach var="page" begin="1" end="${requestScope.page.getAmount() }" step="1" >
           <option> ${ page }</option>
       </c:forEach>
   </select>
   <a href="/book/listBook?nowPage=">跳转页面</a>
</body>
</html>
