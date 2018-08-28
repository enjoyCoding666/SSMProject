<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/11/7
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/jquery/jquery-3.2.1.js"></script>
</head>
<script type="text/javascript">
   $(document).ready( function () {
       $("#search").click(function () {
           console.log("ajax")
            $.ajax({
                type:"POST",                             //请求的类型
                url:"/user/searchUser",                  //请求的路径
                data: {id: $("#id").val() },              //请求的参数
                dataType:"json" ,                        //返回的数据类型
                success: function (msg) {                 //成功返回触发的方法
                     //修改id和年龄
                    console.log(msg.userName +"、"+msg.age);
                    $("#name").html(msg.userName);
                    $("#age").html(msg.age);
                },
                error:function () {                      //请求失败触发的方法
                    alert("数据请求失败");
                }
            })
       })
     }
   );

</script>
<body>
     通过ajax异常刷新用户数据:<br>
     id:  <input type="text" id="id"/>  <br>
     <input type="button" id="search" value="点击搜索"/> <br>
     姓名: <p id="name"></p> <br>
     年龄: <p id="age"></p> <br>

</body>
</html>
