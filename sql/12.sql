(select t.id_tim, t.nazov_tim from tim t join udalost u on t.id_tim = u.id_tim join udalost_typ ut on u.id_udalost_typ = ut.id_udalost_typ
where ut.popis = 'zapas')
intersect
(select t.id_tim, t.nazov_tim from tim t join udalost u on t.id_tim = u.id_tim join udalost_typ ut on u.id_udalost_typ = ut.id_udalost_typ
where ut.popis = 'trening')