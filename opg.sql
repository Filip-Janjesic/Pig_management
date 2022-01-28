drop database if exists opg;
create database opg default character set utf8mb4;
use opg;

create table  farm(
  id int not null primary key auto_increment,
  username varchar(100) not null,
  password varchar(100) not null,
  name varchar(50)
);

/*
 * farmer1@hpzs.hr - farmer1
 * farmer2@hpzs.hr - farmer2
 * admin@hpzs.hr - admin
 */

insert into farm (username,password,name) values
	('farmer1@hpzs.hr','$$2y$10$XSknhGUH7ZdvuM2LE9lHAOLEwNpboHSMmBgZtR2tuRzz2zTzCe9qG','Burek'),
	('farmer2@hpzs.hr','$2y$10$DYHDq24x9pjJpqETMXYjHOfkwYHTUiNHl4vhTNU1c1ouhv6Mu8Q.W','Sarma'),
	('admin@hpzs.hr','$2y$10$HqfCAsZ1YOPBsEiN3GGqnuLNoydPq1dkNLJjkZlJ31JAIwFDLCZgu','Buncek');

create table pig(
  id int not null primary key auto_increment,
  farm int not null,
  breed int not null,
  weight varchar(10) not null,
  gender varchar(10) not null,
  arrived date,
  health_status varchar(50) not null,
  quarantine int not null
);

insert into pig (farm,breed,weight,gender,arrived,health_status,quarantine) values
	(1,1,'396','male','2018-04-30','healthy',1),
	(1,1,'350','female','2018-05-10','healthy',1),
	(1,1,'412','male','2018-04-30','healthy',1),
	(1,1,'422','male','2018-05-10','healthy',1),
	(1,1,'360','female','2018-07-05','sick',2),
	(2,2,'246','male','2020-10-22','healthy',1),
	(2,2,'230','male','2020-10-21','healthy',1),
	(2,2,'162','female','2020-11-02','healthy',1),
	(2,2,'145','female','2020-11-22','sick',2),
	(2,2,'150','female','2020-11-25','sick',2);

create table breed(
	id int not null primary key auto_increment,
	pig int not null,
	name varchar (50) not null
);

insert into breed(pig,name) values
	(1,'Large White'),(2,'Large White'),(3,'Large White'),(4,'Large White'),(5,'Large White'),
	(6,'Welsh '),(7,'Welsh '),(8,'Welsh '),(9,'Welsh '),(10,'Welsh ');

create table quarantine(
  id int not null primary key auto_increment,
  pig int not null,
  date_q date not null,
  reason text,
  farm int not null, 
  breed int not null
);

insert into quarantine (pig,date_q,reason,farm,breed) values
	(5,'2019-01-28','Pseudorabies',1,1),
	(9,'2021-05-07','ASF',2,2),
	(10,'2021-08-11','ASF',2,2);
	

alter table pig add foreign key (farm) references farm(id);
alter table pig add foreign key (breed) references breed(id);
alter table quarantine add foreign key (farm) references farm(id);
alter table quarantine add foreign key (pig) references pig(id);