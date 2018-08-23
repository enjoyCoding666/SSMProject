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
<form   >
    <div class="form-group search_row" style="float:left" >      <%-- 通过左浮动使多个div在一行显示--%>
        <label class="search_label" >图书名称:</label>    <input type="text" class="editText" id="bookName" />
    </div>
    <div class="form-group search_row"  style="float:left"  >
        <label class="search_label"  >出版社:</label>    <input type="text" class="editText" id="publisher"  />
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
        <label class="search_label" >借出时间:</label> <input type="date"  id="brrow_time"  class="editText"/>
    </div>
    <div style="clear:both"></div>

    <div class="form_group search_row" style="float:left">
        <input type="button" value="查询"  class="search_button">
        <input type="reset" value="重置" class="search_button">
    </div>

</form>
</body>
</html>
