<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/11/6
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="uploadFiles" method="post" enctype="multipart/form-data">
        <input type="file" name="files"> <br>
        <input type="submit" value="submit">
    </form>

    <form action="/user/uploadFiles" method="post" enctype="multipart/form-data">
         选择文件1:<input type="file" name="files"/> <br>
         选择文件2:<input type="file" name="files"/> <br>
         <input type="submit" value="上传"/>
    </form>
</body>
</html>
