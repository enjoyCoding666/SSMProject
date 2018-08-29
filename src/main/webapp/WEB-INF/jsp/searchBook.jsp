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

    $(document).ready(function () {
        var nowPage= 1 ;           //
        // 通过ajax，根据查询条件，查出分页页面
        $("#search_books").click(function () {
            $.ajax( {
                url:  " /book/listBook "  ,
                type: "POST" ,
                data :  { name: $("#bookName").val() ,author: $("#author").val() , publishers : $("#publishers").val() ,nowPage:  nowPage  } ,
                dataType : "json"  ,
                success : function (json) {
                    $("#bookTable tr:gt(0)").remove();    //清空表格数据
                    var s = '';
                    for (var i = 0; i < json.length; i++)  {
                        console.log(json[i].publishers);
                        s += '<tr><td>' + json[i].bookId + '</td><td>' + json[i].name + '</td><td>' + json[i].type + '</td><td>' + json[i].author +
                            '</td><td>' + json[i].publishers + '</td><td>' +  json[i].borrowDate + '</td> </tr>' ;
                     }
                    $("#bookTable").append(s);
                },
                error :function () {
                    alert("ajax请求数据失败。")
                }
            } );
        });


    });

</script>

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
        <input type="button" value="查询" id="search_books"  class="search_button">
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
