-- tri rozne formulacie v SQL

-- 1 - dvojity zapor
select t.id_tim, t.nazov_tim from tim t where not exists (
    -- vyber take timy, pre ktore neexistuje typ udalosti, ktoreho sa nezucastnia
    select * from udalost_typ ut where not exists(
        select * from udalost u where t.id_tim = u.id_tim and u.id_udalost_typ = ut.id_udalost_typ
    )
);

-- 2 - porovnanie poctu typov udalosti
select t.id_tim, t.nazov_tim from tim t where (
    -- vyber take timy, pre ktore plati, ze pocet typov udalosti, ktorych sa zucastnia ...
    -- .. je rovny celkovemu poctu vsetkych typov udalosti, ktore evidujeme
    (select count(distinct id_udalost_typ) from udalost u where u.id_tim = t.id_tim)
        -- pocet typov udalosti, ktorych sa dany tim zucastni
    =
    (select count(id_udalost_typ) from udalost_typ)
        -- celkovy pocet vsetkych typov udalosti
);

-- 3 - TODO