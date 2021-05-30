drop database if exists zavrsni_rad_PP23;
create database zavrsni_rad_PP23;
use zavrsni_rad_PP23;

create table opg(
	sifra int not null primary key auto_increment not null,
	mipbg varchar (11) not null,
	adresa varchar (50),
	mjesto varchar (50) not null,
	postanski_broj char (5),
	radnici int not null,
	kultura int not null,
	poljopricredno_zemljiste int not null,
	mehanizacija int not null
);