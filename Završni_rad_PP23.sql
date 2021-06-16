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
	poljoprivredno_zemljiste int not null,
	mehanizacija int not null
);

create table operacija(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	mehanizacija int not null,
	poljoprivredno_zemljiste int not null,
	kultura int not null,
	sredstvo varchar(25),
	pocetak datetime not null,
	kraj datetime
);

create table poljoprivredno_zemljiste(
	sifra int not null key auto_increment,
	koordinate decimal(5.10),
	kultura int not null,
	povrsina decimal (10.5) not null,
	tip_tla int,
	sredstvo varchar(25)
);

create table tip_tla(
	koordinate decimal(5,10),
	sastav varchar (100) not null,
	poljoprivredno_zemljiste int not null,
	kultura int not null
);

create table kultura(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	sorta varchar(50) not null,
	datum_sjetve datetime not null,
	datum_zetve datetime not null
);

create table mehanizacija(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	model varchar(50) not null,	
	operacija int not null,
	tip_tla int not null
);


alter table opg add foreign key (poljoprivredno_zemljište) references poljoprivredno_zemljište (sifra);

