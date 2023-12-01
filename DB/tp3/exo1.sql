select noserv, count(*) from salaries group by noserv;
select contrat, avg(anciennete) from salaries group by contrat;
select adresse, count(*) from salaries where contrat= 'CDI' group by adresse ;
select s.noserv, se.nomservice, count(*) from salaries s join service se on s.noserv = se.noserv group by s.noserv, se.nomservice;
select s.noserv, se.nomservice, count(*) from salaries s join service se on s.noserv = se.noserv group by s.noserv, se.nomservice having count(*) > 2;

select f.codeform, COUNT(s.matricule)
from formation f
join suivre s on f.codeform = s.codeform
group by f.codeform, f.type;

select nom 
from salaries 
where noserv = (
    select noserv 
    from service 
    where nomservice='Personnel'
)

select nom, prenom, matricule 
from salaries 
where matricule in (
    select matricule 
    from suivre
)

select nom, prenom, matricule 
from salaries 
where matricule in (
    select matricule 
    from suivre 
    where codeform = (
        select codeform 
        from formation 
        where type = 'Raft'
    )
)

select nom, prenom, matricule 
from salaries 
where anciennete > (
    select avg(anciennete) 
    from salaries
)