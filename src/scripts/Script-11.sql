create table category(
id integer primary key,
name varchar(100)
);

insert into category values 
(1, 'sport'),
(2, 'local_news'),
(3, 'business'),
(4, 'front_page');


create table news(
id integer primary key,
news_header varchar(100) not null,
news_text text not null,
category_id integer references category(id),
public_time timestamp not null
);

insert into news values 
(1, 'NEWS1', 'text1', 1, '2020-02-01 06:00:00'),
(2, 'NEWS2', 'text2', 2, '2020-02-01 07:00:00'),
(3, 'NEWS3', 'text3', 3, '2020-02-01 08:00:00'),
(4, 'NEWS4', 'text4', 4, '2020-02-01 09:00:00');
