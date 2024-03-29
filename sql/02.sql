-- tri rozne formulacie v SQL

-- 1 - dvojity zapor
select t.id_tim, t.nazov_tim from tim t where not exists (
    -- vyber take timy, pre ktore neexistuje typ udalosti, ktoreho sa nezucastnia
    select 1 from udalost_typ ut where not exists (
        select 1 from udalost u
        where t.id_tim = u.id_tim and u.id_udalost_typ = ut.id_udalost_typ
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

-- 3 - cross join a with ... as ...
with
mozne as (select t.id_tim, ut.id_udalost_typ from tim t cross join udalost_typ ut), -- teoreticky mozne kommbinacie, teda keby sa kazdy tim zucastnil kazdeho typu udalosti
realne as (select u.id_tim, u.id_udalost_typ from tim t join udalost u on t.id_tim = u.id_tim join udalost_typ ut on u.id_udalost_typ = ut.id_udalost_typ), -- udalosti, ktore realne nastali
nenastali as (select * from mozne except select * from realne), -- udalosti, ktore nenastali
timy_vsetky_typy_udalosti as (select distinct id_tim from tim except select distinct id_tim from nenastali) -- id timov, ktore sa zucastnili vsetkych typov udalosti
select id_tim, nazov_tim from timy_vsetky_typy_udalosti join tim using (id_tim); -- spoj s tabulkou tim, kvoli nazvu timu
