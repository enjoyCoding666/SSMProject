<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/4/26
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SSM</title>
</head>
<body>
<table>
    <form  action="/user/test"  method="post">
        <tr>
            <td>
                账号:
            </td>
            <td>
                <input type="text" name="account"/>
            </td>
        </tr>
        <tr>
            <td>
                密码:
            </td>
            <td>
                <input type="text" name="password"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="登陆" />
            </td>
            <td>
                <input type="reset" value="重置" />
            </td>
        </tr>
    </form>
 </table>
</body>
</html>
