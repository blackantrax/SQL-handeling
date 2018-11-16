delete from Traversee;
delete from classeVoyage;
delete from BateauVoyage;
delete from port;
delete from Bateau;
delete from Voyage;
delete from classe;

-- port

insert into port (codeport,ville,etat,nom) values ('PMV','Vancouver','CA','Metro Vancouver');
insert into port (codeport,ville,etat,nom) values ('POC','Californie','US','Port Oakland');
insert into port (codeport,ville,etat,nom) values ('PDH','HAVRE','FR','Port du Havre');
insert into port (codeport,ville,etat,nom) values ('PNY','New York','US','Port de New York Et New Jersey');
insert into port (codeport,ville,etat,nom) values ('PMT','Montréal','CA','Port de Montréal');
insert into port (codeport,ville,etat,nom) values ('PSH','Guangdong','CH','port de Shenzhen');




-- Bateau
insert into Bateau (noBateau,nomodele,dateachat) values (1,'NGV Serenade Sea',date '2010-09-08');
insert into Bateau (noBateau,nomodele,dateachat) values (2,'Paquebot Q Victoria',date '2011-09-01');
insert into Bateau (noBateau,nomodele,dateachat) values (3,'Paquebot Q Mary',date '2012-08-01');
--
insert into Bateau (noBateau,nomodele,dateachat) values (4,'NGV Costa Pacifica',date '2014-12-31');
insert into Bateau (noBateau,nomodele,dateachat) values (5,'Voilier Roy Clipper',date '1989-02-28');
insert into Bateau (noBateau,nomodele,dateachat) values (6,'Ferrie Wind Surf',date '1949-04-03');


-- Voyage
insert into Voyage (noVoyage,typedeVoyage) values ('AC2001','régulier');
insert into Voyage (noVoyage,typedeVoyage) values ('AC2002','nolisé');
--
insert into Voyage (noVoyage,typedeVoyage) values ('AC2003','nolisé');
insert into Voyage (noVoyage,typedeVoyage) values ('AC2004','régulier');
insert into Voyage (noVoyage,typedeVoyage) values ('AC2005','régulier');
insert into Voyage (noVoyage,typedeVoyage) values ('AC2006','régulier');
insert into Voyage (noVoyage,typedeVoyage) values ('AC2007','régulier');


-- Traversee
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2001',1,'PMV','POC',timestamp '2014-01-02 13:00:00', timestamp '2014-01-02 21:00:00');
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2001',2,'POC','PDH',timestamp '2014-01-02 14:00:00',timestamp '2014-01-03 07:00:00');
--
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2002',1,'PMV','PDH',timestamp '2013-01-02 19:00:00', timestamp '2013-01-03 07:00:00');
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2003',1,'PMV','PMT',timestamp '2013-01-02 09:00:00', timestamp '2013-01-02 22:00:00');
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2003',2,'PMT','PNY',timestamp '2013-01-02 11:00:00',timestamp '2013-01-02 20:00:00');
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2003',3,'PNY','PDH',timestamp '2013-01-02 14:00:00',timestamp '2013-01-03 07:00:00');
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2004',1,'PNY','PMV',timestamp '2014-01-03 01:00:00',timestamp '2014-01-03 16:00:00');
insert into Traversee
    (noVoyage,noTraversee, codeportDepart, codeportArrivee, dateHeurePrevueDepart, dateHeurePrevueArrivee)
  values
    ('AC2007',1,'PMV','POC',timestamp '2014-01-02 03:00:00', timestamp '2014-01-02 15:00:00');

-- Classe
insert into classe (noclasse,description) values (1,'Affaires');
insert into classe (noclasse,description) values (2,'économique');
--
insert into classe (noclasse,description) values (3,'Risquée');
insert into classe (noclasse,description) values (4,'Pas terrible');

-- Classe - Voyage
insert into classeVoyage (noclasse,noVoyage,prix) values (1,'AC2001',1010.02);
insert into classeVoyage (noclasse,noVoyage,prix) values (2,'AC2001',300.03);
--
insert into classeVoyage (noclasse,noVoyage,prix) values (3,'AC2001',1.99);
insert into classeVoyage (noclasse,noVoyage,prix) values (4,'AC2001',19.99);
insert into classeVoyage (noclasse,noVoyage,prix) values (1,'AC2002',5275.25);
insert into classeVoyage (noclasse,noVoyage,prix) values (2,'AC2002',1145.78);
insert into classeVoyage (noclasse,noVoyage,prix) values (3,'AC2003',99.99);
insert into classeVoyage (noclasse,noVoyage,prix) values (4,'AC2003',199.99);
insert into classeVoyage (noclasse,noVoyage,prix) values (1,'AC2006',9999.99);

-- Bateau - Voyage
insert into BateauVoyage (noVoyage,noBateau) values ('AC2001',1);
insert into BateauVoyage (noVoyage,noBateau) values ('AC2002',2);
--
insert into BateauVoyage (noVoyage,noBateau) values ('AC2003',3);
insert into BateauVoyage (noVoyage,noBateau) values ('AC2004',4);
insert into BateauVoyage (noVoyage,noBateau) values ('AC2005',5);
insert into BateauVoyage (noVoyage,noBateau) values ('AC2006',6);
insert into BateauVoyage (noVoyage,noBateau) values ('AC2007',1);