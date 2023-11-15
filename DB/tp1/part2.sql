select datedeb, datefin, type from formation;
select nomservice from service;
select nom, prenom, noserv from salaries;
select nom, prenom from salaries where noserv = 2;
select nom, prenom from salaries where rythme ='Normal' and adresse='Rennes';
select nom, prenom from salaries where not (rythme ='Normal' and adresse='Rennes');
select nom, prenom from salaries where nos like '2%';