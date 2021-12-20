drop database if exists OPG_zapisnik;
create database OPG_zapisnik;
use OPG_zapisnik;
-- --------------------------------------------------------

CREATE TABLE opg (
  id int not null primary key auto_increment,
  username varchar(255) not null,
  password varchar(255) not null
);

/*
INSERT INTO opg (id, username, password) VALUES
(1, 'admin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8 ');
*/
-- --------------------------------------------------------

CREATE TABLE breed(
  id int not null primary key auto_increment,
  pig int not null,
  name varchar(255) not null
);


/*
INSERT INTO breed (pig, name) VALUES
(1, 'Berkshire'),
(2, 'British Saddleback'),
(3, 'Duroc'),
(4, 'Large White'),
(5, 'Spotted'),
(6, 'Chester White');
*/
-- --------------------------------------------------------

CREATE TABLE pig (
  id int not null primary key auto_increment,
  opg int not null,
  pig_no varchar(255) not null,
  breed int not null,
  weight varchar(10) not null,
  img varchar(255) not null,
  gender varchar(10) not null,
  arrived varchar(10) not null,
  remark text not null,
  health_status varchar(50) not null,
  quarantine int not null
);

/*
INSERT INTO pig (id, opg, pigno, breed, weight, img, gender, arrived, remark, health_status) VALUES
(2, 1, 'pig-fms-938', 'Large White', '50kg', 'uploadfolder/Koala.jpg', 'female', '2017-11-02', 'This is the content', 'active');
*/
-- --------------------------------------------------------

CREATE TABLE quarantine (
  id int not null primary key auto_increment,
  pig int not null,
  date_q varchar(10) not null,
  reason text not null,
  opg int not null, 
  breed varchar(50) not null
);

alter table pig add foreign key (opg) references opg(id);
alter table pig add foreign key (breed) references breed(id);
alter table quarantine add foreign key (opg) references opg(id);
alter table quarantine add foreign key (pig) references pig(id);