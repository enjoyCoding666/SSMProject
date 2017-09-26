SSM框架练手项目

待完成功能：
1.注册功能，实现上传附件至服务器  
2.分页显示PageUtil  
3.完成图书的借阅、归还。  
4.模仿其他网站的功能   
5.注册登陆的逻辑判断,比如用户名已存在，登陆的账号密码不正确等   
6.jquery，ajax    
7.修改用户个人资料，修改密码等  
8.图书信息Book表
9.将注册页面的大量jsp代码更换为jstl.

收获：  
1.WEB—INF文件夹下的文件，为了保证安全性，是无法通过Url访问的。  
2.js的简单写法。比较按钮事件等。   
3.css样式的简单应用。
4.web分层。

数据库信息：
mysql> create table user_t(
 id int(5) not null primary key auto_increment,
 user_name varchar(20) not null,
 password char(20) not null,
 age int(5) 
 );

 create table book_t(
   book_id int(5) not null primary key auto_increment,
   name varchar(20) not null,
   type varchar(20) not null,      
   author varchar(20) not null,
   publishers varchar(20) ,
   borrowDate datetime
 );


