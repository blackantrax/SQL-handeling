drop table Port cascade constraints;
drop table Voyage cascade constraints;
drop table Traversee cascade constraints;
drop table Classe cascade constraints;
drop table ClasseVoyage cascade constraints;
drop table Bateau cascade constraints;
drop table BateauVoyage cascade constraints;

create table Port (
codePort  		 char(3),
ville         varchar(40) ,
etat          varchar(40) ,
nom           varchar(40) 
);


create table Voyage (
noVoyage         varchar(6),
typeDeVoyage     varchar(10)
);


create table Traversee (
noVoyage                   varchar(6),
noTraversee               smallint ,
codePortDepart      char(3) ,
codePortArrivee     char(3) ,
dateHeurePrevueDepart   timestamp ,
dateHeurePrevueArrivee  timestamp 
);


create table Classe (
noClasse      smallint,
description   varchar(40) 
);


create table ClasseVoyage (
noClasse      smallint,
noVoyage         varchar(6),
prix          numeric(8,2) 
);


create table Bateau (
noBateau       smallint,
noModele      varchar(20) ,
dateAchat     date 
);


create table BateauVoyage (
noVoyage         varchar(6),
noBateau       smallint
);
