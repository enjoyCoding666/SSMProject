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


<body>
<%--<form   >     &lt;%&ndash;   使用ajax异步刷新。 &ndash;%&gt;--%>
    <div class="form-group search_row" style="float:left" >      <%-- 通过左浮动使多个div在一行显示  --%>
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
        <label class="search_label" >借出时间:</label> <input type="date"  id="borrowDate"  class="editText"/>
    </div>
    <div style="clear:both"></div>

    <div class="form_group search_row" style="float:left">
        <input type="button" value="查询" id="search_books"  class="search_button" onclick="postHref(1)">
        <input type="reset" value="重置" class="search_button">
    </div>

<%--</form>--%>

  <div style="clear: both;" >
    <table   class="gridtable"  id="bookTable">
       <thead>
        <tr>
            <td>编号</td> <td>图书名称</td> <td>分类</td> <td>作者</td>
            <td>出版社</td>  <td>借出时间</td>
        </tr>
       </thead>
       <tbody>
        <c:forEach var="book" items="${requestScope.bookList}">
            <tr id="bookInfo">
                <td> ${  book.getBookId() }</td>
                <td> ${  book.getName() }</td>
                <td>  ${ book.getType() }</td>
                <td>  ${ book.getAuthor()} </td>
                <td> ${  book.getPublishers() }    </td>
                <td> ${  book.getBorrowDate() } </td>
            </tr>
        </c:forEach>
       </tbody>
    </table>
    <a   href="javascript:void(0);" onclick="postHref(1)">首页</a>
    <a  href="javascript:void(0);" onclick="postHref( ${requestScope.page.getPreviousPage() } )">上一页</a>
    <a  href="javascript:void(0);" onclick="postHref( ${requestScope.page.getNextPage() } )">下一页</a>
    <select title="select" id="option" >
        <c:forEach var="page" begin="1" end="${requestScope.page.getPage() }" step="1" >
            <option> ${ page }</option>
        </c:forEach>
    </select>
    <a  href="javascript:void(0);" id="pageUrl" onclick="setHref()">跳转页面</a>
    <a   href="javascript:void(0);" onclick="postHref( ${requestScope.page.getPage() } )">末页</a>
    <br><br>
    当前页数:${requestScope.page.getNowPage() }<br>
    总页数 : ${ requestScope.page.getPage() }

  </div>
</body>
</html>
