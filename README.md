SSM框架练手项目

一、待完成功能：<br>
0.更换界面，这个界面实在太丑了。<br>
1.注册功能，实现上传附件至服务器(已完成)<br>
2.分页显示图书信息(已完成)<br>
3.完成图书的借阅、归还。<br>
4.模仿其他网站的功能<br> 
5.注册登陆的逻辑判断,比如用户名已存在，登陆的账号密码不正确等(已完成)<br> 
6.jquery实现页面功能，ajax实现异步刷新数据(已完成)<br>
7.修改用户个人资料，修改密码等<br>
8.图书信息Book表(已完成),页面根据正则表达式显示日期<br>
9.将注册页面的大量jsp代码更换为jstl.(已完成)<br>
10.仔细阅读spring-mvc.xml，spring-mybatis.xml。。(已完成)<br>
11.二级联动。比如计算机、科学、文学等一大类，文学又分为小说、散文、诗歌等等。(已完成)<br>
12.书籍的增删改查。使用css调好样式。 <br>
13.文本框、各个控件的css样式等。 <br>
14.搜索功能。自动补全功能。  <br>
15.修改注册、登录的界面。。  <br>
16.将查询功能和分页显示放在一起。
17.添加redis缓存。

二、遇到的问题：
1.html的时间选择器如何设定初始时间？
解决：理解js中Date的prototype属性。
2.外部的js文件突然失效，如何处理？

三、遇到的错误：
1.<mvc:interceptor>不起作用。
2.Idea报错：The origin server did not find a current representation for the target resource or is not willing to disclose that one exists.
3.报错405 - Method Not Allowed。Request method 'GET' not supported
解决：GET和POST区别。
4.报错400–Bad Request。Required String parameter ' ' is not present
解决： @RequestParam(value="name",required = false)String name。在SpringMvc的Controller层，添加required = false即可。表示不是必须的参数。
5.Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where' at line 4
 解决：改正mybatis中的sql就可以了。

