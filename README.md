SSM框架练手项目

待完成功能：<br>
1.注册功能，实现上传附件至服务器<br>
2.分页显示PageUtil<br>
3.完成图书的借阅、归还。<br>
4.模仿其他网站的功能<br> 
5.注册登陆的逻辑判断,比如用户名已存在，登陆的账号密码不正确等(已完成)<br> 
6.jquery，ajax<br><br>
7.修改用户个人资料，修改密码等<br>
8.图书信息Book表(已完成),页面根据正则表达式显示日期<br>
9.将注册页面的大量jsp代码更换为jstl.(已完成)<br>
10.仔细阅读spring-mvc.xml，spring-mybatis.xml。。<br>

收获：<br>
1.WEB—INF文件夹下的文件，为了保证安全性，是无法通过Url访问的。<br>
2.js的简单写法。比较按钮事件等。<br> 
3.css样式的简单应用。<br>
4.web分层。<br>

数据库信息：<br>
mysql> create table user_t(
 id int(5) not null primary key auto_increment,
 user_name varchar(20) not null,
 password char(20) not null,
 age int(5) 
 );

 create table book_t(
<br> book_id int(5) not null primary key auto_increment,
<br> name varchar(20) not null,
<br> type varchar(20) not null,<br><br><br>
<br> author varchar(20) not null,
<br> publishers varchar(20) ,
<br> borrowDate datetime
 );


