drop database if exists zavrsni_rad_PP23;
create database zavrsni_rad_PP23;
use zavrsni_rad_PP23;

create table opg(
	sifra int not null primary key auto_increment,
	mipbg varchar (11) not null,
	adresa varchar (50),
	mjesto varchar (50) not null,
	postanski_broj char (5),
	radnici int,
	kultura int,
	poljoprivredno_zemljiste int,
	mehanizacija int
);


insert into opg(email,lozinka,ime,prezime,uloga) values 
('admin@edunova.hr','$2y$10$sc61AG4pNc2ddh4SVRYr1.VVaH58j8LRf03QkUwrC1AKN95acN.qu',
'Administrator','Edunova','admin'),
('oper@edunova.hr','$2y$10$sc61AG4pNc2ddh4SVRYr1.VVaH58j8LRf03QkUwrC1AKN95acN.qu',
'Operater','Edunova','oper');


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
	sifra int not null key auto_increment,
	koordinate decimal(5.10),
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

create table radnici(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	uloga varchar(50) not null,
	nivo obrazovanja varchar (50)
);


alter table opg add foreign key (poljoprivredno_zemljiste) references poljoprivredno_zemljiste (sifra);
alter table poljoprivredno_zemljiste add foreign key (tip_tla) references tip_tla (sifra);
alter table tip_tla add foreign key (poljoprivredno_zemljiste) references poljoprivredno_zemljiste (sifra);
alter table mehanizacija add foreign key (operacija) references operacija (sifra);
alter table mehanizacija add foreign key (tip_tla) references tip_tla (sifra);










