create table user_t(
  id int(5) not null primary key auto_increment,
  user_name varchar(20) not null,
  password char(20) not null,
  age int(5) );

create table book_t(
  book_id int(5) not null primary key auto_increment,
  name varchar(20) not null,
  type varchar(20) not null,
  author varchar(20) not null,
  publishers varchar(20) ,
  borrowDate datetime );

insert into user_t values (1,'lin','lin',25);

INSERT INTO book_t VALUES (8,"活着","短篇小说","余华","作家出版社","2017-07-13 16:00:00");