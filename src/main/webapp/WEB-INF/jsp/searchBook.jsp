<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书检索</title>
</head>
<script type="text/javascript" src="/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" >

    $(document).ready(function () {
        var date=new Date().Format("yyyy-MM-dd");
        console.log( date);
        $("[name=brrow_time]").val(date);
//          $("#brrow_time").val(date);
    });

    Date.prototype.Format = function(fmt){
        var o = {
            "M+": this.getMonth()+1,
            "d+": this.getDate(),
            "H+": this.getHours(),
            "m+": this.getMinutes(),
            "s+": this.getSeconds(),
            "S+": this.getMilliseconds()
        };
        //因为date.getFullYear()出来的结果是number类型的,所以为了让结果变成字符串型，下面有两种方法：
        if(/(y+)/.test(fmt)){
            //第一种：利用字符串连接符“+”给date.getFullYear()+""，加一个空字符串便可以将number类型转换成字符串。
            fmt=fmt.replace(RegExp.$1,(this.getFullYear()+"").substr(4-RegExp.$1.length));
        }
        for(var k in o){
            if (new RegExp("(" + k +")").test(fmt)){
                //第二种：使用String()类型进行强制数据类型转换String(date.getFullYear())，这种更容易理解。
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(String(o[k]).length)));
            }
        }
        return fmt;
    };

</script>

<body>
    图书名称:<input type="text" id="bookName"/> &nbsp;&nbsp;&nbsp;
    出版社&nbsp;:<input type="text" id="publisher"> <br>
    作者&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" id="author">&nbsp;&nbsp;&nbsp;
    借出时间:<input type="date" id="brrow_time"  name="brrow_time">

</body>
</html>
