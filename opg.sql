drop database if exists opg;
create database opg default character set utf8mb4;
use opg;

create table  farmer(
  id int not null primary key auto_increment,
  username varchar(100) not null,
  password varchar(100) not null,
  name varchar(50),
  surname varchar(50)
);

insert into farmer (username,password,name,surname) values
	('farmer@hpzs.hr','$2y$10$rkETn.3hWwecWDWBARMv2Ogt5bEra9ildIHvMtd5H525WZVj5eidS','Ferdinand','Tadijanović'),
	('admin@hpzs.hr','$2y$10$HqfCAsZ1YOPBsEiN3GGqnuLNoydPq1dkNLJjkZlJ31JAIwFDLCZgu','Glavni','Administrator');
	
create table breed(
	id int not null primary key auto_increment,
	pig int not null,
	name varchar (50) not null
);

create table pig(
  id int not null primary key auto_increment,
  opg int not null,
  pig_no varchar(255) not null,
  breed int not null,
  weight varchar(10) not null,
  img varchar(255) not null,
  gender varchar(10) not null,
  arrived varchar(10) not null,
  health_status varchar(50) not null,
  quarantine int not null
);

create table quarantine(
  id int not null primary key auto_increment,
  pig int not null,
  pig_no varchar(255) not null,
  date_q varchar(10) not null,
  reason text,
  opg int not null, 
  breed varchar(50) not null
);