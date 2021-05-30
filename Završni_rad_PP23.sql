drop database if exists zavrsni_rad_PP23;
create database zavrsni_rad_PP23;
use zavrsni_rad_PP23;

create table opg(
	sifra int not null primary key auto_increment,
	mipbg varchar (11) not null,
	adresa varchar (50),
	mjesto varchar (50) not null,
	postanski_broj char (5),
	radnici int not null,
	kultura int not null,
	poljopricredno_zemljiste int not null,
	mehanizacija int not null
);

create table operacija(
	sifra int not null primary key auto_increment;
	naziv varchar(50) not null,
	mehanizacija int not null,
	poljoprivredno_zemljiste int not null,
	kultura int not null,
	sredstvo varchar(25),
	pocetak datetime not null,
	kraj datetime
);