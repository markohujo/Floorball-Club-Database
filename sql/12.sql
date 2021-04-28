
select t.id_tim, t.nazov_tim from tim t join (
    (select t.id_tim from
        tim t join udalost u on t.id_tim = u.id_tim join udalost_typ ut on u.id_udalost_typ = ut.id_udalost_typ
        and ut.popis = 'zapas')
    intersect
    (select t.id_tim from
        tim t join udalost u on t.id_tim = u.id_tim join udalost_typ ut on u.id_udalost_typ = ut.id_udalost_typ
        and ut.popis = 'trening')
) r1 on t.id_tim = r1.id_tim;
