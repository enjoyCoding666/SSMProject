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
    <script type="text/javascript" src="/jquery/jquery-3.2.1.js"></script>
</head>
<script type="text/javascript">
    function setHref() {
        var value=$("#option").val();
        $("#pageUrl").attr("href","${pageContext.request.contextPath}/book/listBook?nowPage="+value);
        return value;
    }
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
   <a href="${pageContext.request.contextPath}/book/listBook?nowPage=1">首页</a>
   <a href="${pageContext.request.contextPath}/book/listBook?nowPage=${requestScope.page.getPreviousPage() }">上一页</a>
   <a href="${pageContext.request.contextPath}/book/listBook?nowPage=${ requestScope.page.getNextPage() }">下一页</a>
   <select title="select" id="option" onchange="setHref()">
       <c:forEach var="page" begin="1" end="${requestScope.page.getPage() }" step="1" >
           <option> ${ page }</option>
       </c:forEach>
   </select>
   <a id="pageUrl" href="">跳转页面</a>
   <a href="${pageContext.request.contextPath}/book/listBook?nowPage=${requestScope.page.getPage()}">末页</a>
   <br><br>
   当前页数:${requestScope.page.getNowPage() }<br>
   总页数 : ${ requestScope.page.getPage() }

</body>
</html>
