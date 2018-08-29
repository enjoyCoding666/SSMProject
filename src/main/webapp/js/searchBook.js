/**
 * Created by lenovo on 2018/8/22.
 */

//jquery内容如下：
$(document).ready(function () {


    //Date的prototype 属性可以向Date对象添加属性和方法。
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

    // 设置借出时间的默认日期选项
    var date=new Date().Format("yyyy-MM-dd");
    console.log( date);
    $("[id=brrow_time]").val(date);

    //设置一级分类
    // 先获得一级分类对象
    var province = document.getElementById("province");
   //遍历并将数据追加到option选项中
   for(var i=0;i<china.length;i++) {
       //以下采用dom来添加选项
         var option=document.createElement("option");
         option.value=china[i].p_id;
         option.innerHTML=china[i].p_name;
         province.appendChild(option);
   }

   //下拉框发生改变事件
    province.onchange=function () {
        //获取点击对象的值
        var provinceId=this.value;
        var cities;

        for(var i=0;i<china.length;i++) {
            if(provinceId == china[i].p_id) {
                cities=china[i].cities;
            }
        }

       //以下采用jquery来添加选项
       //  var city = document.getElementById("city");
        var city=$("#city");
        city.innerHTML="<option value='none'>--请选择市--</option>";
        for(var i=0;i<cities.length;i++) {
            var option=document.createElement("option");
            option.innerHTML=cities[i].c_name;
            option.value=cities[i]. c_id;
            // city.appendChild(option);
            city.append(option);
        }
    };


});


