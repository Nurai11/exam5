create table routs(
id integer primary key,
rout_number integer not null,
start_point varchar(50) not null,
end_point varchar(50) not null
);

insert into routs values
(1, 23, 'A', 'B'),
(2, 34, 'C', 'D'),
(3, 45, 'E', 'F'),
(4, 56, 'G', 'H');


create table bus(
id integer primary key,
bus_number integer not null,
rout_id integer references routs(id) not null
);


insert into bus values
(1, 11, 1),
(2, 22, 2),
(3, 33, 3),
(4, 44, 4);


create table driver(
id integer primary key,
full_name varchar(80),
bus_id integer references bus(id) not null
);

insert into driver
(1, 'Alex', 1),
(2, 'John', 2),
(3, 'Tom', 3),
(4, 'Philip', 4);

create table journal(
driver_id integer references driver(id) not null,
bus_id integer references bus(id) not null,
timee varchar(50)
);

insert into journal values
(1, 1, '12:00'),
(2, 2, '13:00'),
(3, 3, '14:00'),
(4, 4, '15:00');






