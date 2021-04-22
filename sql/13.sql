(select c.meno, c.priezvisko, h.post from
clen c join hrac h on c.id_clen = h.id_clen join hrac_tim ht on h.id_clen = ht.id_clen join tim t on ht.id_tim = t.id_tim
where t.nazov_tim='Team A' and h.post='defender')
union
(select c.meno, c.priezvisko, h.post from
clen c join hrac h on c.id_clen = h.id_clen join hrac_tim ht on h.id_clen = ht.id_clen join tim t on ht.id_tim = t.id_tim
where t.nazov_tim='Team A' and h.post='goalkeeper')