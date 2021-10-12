drop database if exists zavrsni_rad_PP23;
create database zavrsni_rad_PP23;
use zavrsni_rad_PP23;


create table opg(
	sifra int not null primary key auto_increment,
	mipbg varchar (11) not null,
	adresa varchar (50) not null,
	mjesto varchar (50) not null,
	postanski_broj char (5) not null
);

create table sredstvo(
	sifra int not null primary key auto_increment,
	opg int not null,
	mehanizacija varchar (255) not null,
	pesticid varchar (255) not null,
	hranjiva_tvar varchar (255) not null,
	alat varchar (255)
);

create table kultura(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	sorta varchar(50) not null,
	datum_sjetve datetime not null,
	datum_zetve datetime not null,
	sredstvo int not null,
	opg int not null
);

create table vlasnik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib varchar (11) not null,
	username varchar(50) not null,
    password varchar(255) not null,
    opg int not null,
    email varchar(255) not null
);

create table radnik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	uloga varchar(50) not null,
	vlasnik int not null
);


alter table sredstvo add foreign key (opg) references opg(sifra);
alter table kultura add foreign key (opg) references opg(sifra);
alter table kultura add foreign key (sredstvo) references sredstvo(sifra);
alter table vlasnik add foreign key (opg) references opg(sifra);
alter table radnik add foreign key (vlasnik) references vlasnik(sifra);