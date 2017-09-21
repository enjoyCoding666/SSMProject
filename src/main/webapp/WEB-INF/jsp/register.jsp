<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/19
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <%--<script type="text/javascript">--%>
        <%--function openFileDialog() {--%>
            <%--document.getElementById("btn_file").click();--%>
        <%--}--%>


    <%--</script>--%>
</head>
<body>
     <table>
         <form method="post" action="insert">
             <tr>
                 <td>用户id:</td>
                 <td>  <input type="text" name="userId"/>  </td>
             </tr>
               <tr>
                   <td>用户名:</td>
                   <td>  <input type="text" name="account"/>  </td>
               </tr>
               <tr>
                   <td>密码:</td>
                   <td> <input type="text" name="password"> </td>
               </tr>
               <tr>
                   <td>邮箱:</td>
                   <td> <input type="text" name="email"/></td>
               </tr>
                <tr>
                    <td>年龄:</td>
                    <td> <input type="text" name="age"/></td>
                </tr>
                <tr>
                    <td>上传头像:</td>
                    <td> &nbsp
                         <input type="file" id="btn_file" value="打开"/>
                    </td>
                </tr>

             <tr>
                 <td>
                     <input type="submit" value="提交" />
                 </td>
                 <td>
                     &nbsp<input type="reset" value="重置" />
                 </td>
             </tr>
         </form>
     </table>
</body>
</html>
