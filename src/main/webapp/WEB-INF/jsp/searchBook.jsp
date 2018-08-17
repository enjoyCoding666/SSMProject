<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书检索</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="/css/search.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<script type="text/javascript" src="/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" >

    $(document).ready(function () {
        var date=new Date().Format("yyyy-MM-dd");
        console.log( date);
        $("[name=brrow_time]").val(date);
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
        // test()方法用于检测一个字符串是否匹配某个模式.
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
  <form   >
      <div class="form-group" style="float:left" >      <%-- 通过左浮动使多个div在一行显示--%>
          <label class="search_label " >图书名称:</label>    <input type="text" class="editText" name="bookName" />
       </div>
       <div class="form-group"   >
           <label class="search_label"  >出版社:</label>    <input type="text" class="editText" name="publisher"  />
       </div> <br>
      <div style="clear:both"></div>

     <div class="form_group"  style="float:left">
         <label  class="search_label">作者:</label> <input type="text" class="editText" name="author"/>
     </div>
     <div class="form_group"  >
        <label class="search_label" >借出时间:</label> <input type="date" id="brrow_time"  name="brrow_time"  class="editText"/>
     </div><br>
      <div style="clear:both"></div>

      <div class="form_group" style="float:left">
          <input type="button" value="查询"  class="search_button">
      </div>

  </form>
</body>
</html>
