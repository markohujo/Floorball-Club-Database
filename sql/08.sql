select c.meno, c.priezvisko, c.email, t1.licencia, r1.pocet_timov
from clen c join trener t1 on c.id_clen = t1.id_clen join (
    select t.id_clen, count(id_tim) as pocet_timov
    from trener t left join asistent a on t.id_clen = a.id_clen group by t.id_clen, a.id_clen
) r1 on t1.id_clen = r1.id_clen
order by pocet_timov desc;
