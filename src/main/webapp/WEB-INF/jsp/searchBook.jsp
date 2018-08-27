<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书查询</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="/css/search.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/jquery/jquery-3.2.1.js"></script>

    <script src="/js/searchBook.js" type="text/javascript" ></script>
    <script src="/js/cities.js" type="text/javascript"></script>
</head>
<script type="text/javascript" >
    //设置分页页面的跳转链接
    function setHref() {
        var value=$("#option").val();
        $("#pageUrl").attr("href","${pageContext.request.contextPath}/book/searchBook?nowPage="+value);
    }
</script>

<body>
<form  action="/book/searchBook">
    <div class="form-group search_row" style="float:left" >      <%-- 通过左浮动使多个div在一行显示--%>
        <label class="search_label" >图书名称:</label>    <input type="text" class="editText" id="bookName" />
    </div>
    <div class="form-group search_row"  style="float:left"  >
        <label class="search_label"  >出版社:</label>    <input type="text" class="editText" id="publishers"  />
    </div>

    <div class="form-group search_row" style="clear: both;float:left" >      <%-- 通过左浮动使多个div在一行显示--%>
        <label class="search_label" >一级分类:</label>
         <select   class="editText" id="province" >
                <option>全部</option>
         </select>
    </div>
    <div class="form-group search_row"  style="float:left"  >
        <label class="search_label"  >二级分类:</label>
        <select  class="editText"  id="city"  >
              <option>全部</option>
        </select>
    </div>

   <div class="form_group search_row"  style="clear: both; float:left">      <%-- 此处必须清除浮动--%>
        <label  class="search_label">作者:</label> <input type="text" class="editText" id="author"/>
    </div>
    <div class="form_group search_row"  style="float:left"  >
        <label class="search_label" >借出时间:</label> <input type="date"  id="brrowDate"  class="editText"/>
    </div>
    <div style="clear:both"></div>

    <div class="form_group search_row" style="float:left">
        <input type="button" value="查询" id="search_books"  class="search_button">
        <input type="reset" value="重置" class="search_button">
    </div>

</form>

  <div style="clear: both;" >
    <table   class="gridtable">
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
    <a href="${pageContext.request.contextPath}/book/searchBook?nowPage=1">首页</a>
    <a href="${pageContext.request.contextPath}/book/searchBook?nowPage=${requestScope.page.getPreviousPage() }">上一页</a>
    <a href="${pageContext.request.contextPath}/book/searchBook?nowPage=${ requestScope.page.getNextPage() }">下一页</a>
    <select title="select" id="option" >
        <c:forEach var="page" begin="1" end="${requestScope.page.getPage() }" step="1" >
            <option> ${ page }</option>
        </c:forEach>
    </select>
    <a id="pageUrl" onclick="setHref()">跳转页面</a>
    <a href="${pageContext.request.contextPath}/book/searchBook?nowPage=${requestScope.page.getPage()}">末页</a>
    <br><br>
    当前页数:${requestScope.page.getNowPage() }<br>
    总页数 : ${ requestScope.page.getPage() }

  </div>
</body>
</html>
