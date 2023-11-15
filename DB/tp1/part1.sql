drop table ami;
drop table membre;
drop table personne;
drop table groupe;

create table personne (
    id number(6),
    nom varchar2(50),
    age number(3),
    constraint pk_personne primary key (id)
);

create table ami (
    id1 number(6),
    id2 number(6),
    constraint pk_ami primary key (id1, id2),
    constraint fk_ami1 foreign key (id1) references personne(id),
    constraint fk_ami2 foreign key (id2) references personne(id)
);

create table groupe (
    id number(6),
    nom varchar2(50),
    constraint pk_groupe primary key (id)
);

create table membre (
    id_personne number(6),
    id_groupe number(6),
    constraint pk_membre primary key (id_personne, id_groupe),
    constraint fk_membre1 foreign key (id_personne) references personne(id),
    constraint fk_membre2 foreign key (id_groupe) references groupe(id)
);

insert into personne values (1, 'Annie', 19);
insert into personne values (2, 'Alba', 20);
insert into personne values (3, 'Georges', 21);
insert into personne values (4, 'Samantha', 20);
insert into personne values (5, 'Baldwine', 19);
insert into personne values (6, 'Alfred', 17);

insert into groupe values (1, 'Surf');
insert into groupe values (2, 'Yoga');
insert into groupe values (3, 'Voyages');
insert into groupe values (4, 'Musique');
insert into groupe values (5, 'Dance');
insert into groupe values (6, 'Jazz');

insert into ami values (1, 2);
insert into ami values (3, 4);
insert into ami values (5, 6);
insert into ami values (5, 4);

insert into membre values (1, 1);
insert into membre values (2, 2);
insert into membre values (2, 3);
insert into membre values (5, 6);
insert into membre values (6, 6);
insert into membre values (4, 5);

UPDATE personne SET age = 25 WHERE nom = 'Georges';
DELETE from membre where id_personne in (3,4);
DELETE from ami where id1 in (3,4) or id2 in (3,4);
DELETE FROM personne WHERE nom IN ('Georges', 'Samantha');
