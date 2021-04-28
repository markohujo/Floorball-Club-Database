select id_tim from (
    select * from tim t where not exists (
        select 1 from udalost_typ ut where not exists (
            select 1 from udalost u where t.id_tim = u.id_tim and u.id_udalost_typ = ut.id_udalost_typ
        )
    )
) result_teams
where (select count(*) from udalost_typ) != (select count(distinct id_udalost_typ) from udalost_typ join udalost using(id_udalost_typ) where udalost.id_tim = result_teams.id_tim);
