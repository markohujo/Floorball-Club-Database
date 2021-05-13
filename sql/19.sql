select t1.nazov_tim, c.meno as trener_meno, c.priezvisko as trener_priezvisko, r1.pocet_brankarov
from tim t1 join clen c on t1.id_hlavny_trener = c.id_clen join (
    select t2.id_tim, count(*) as pocet_brankarov from
    tim t2 join hrac_tim ht on t2.id_tim = ht.id_tim join hrac h on ht.id_clen = h.id_clen
    where h.post = 'goalkeeper'
    group by t2.id_tim
    having count(*) >= 2
) r1 on t1.id_tim = r1.id_tim
order by r1.pocet_brankarov desc;

select t1.nazov_tim, c.meno as trener_meno, c.priezvisko as trener_priezvisko, r1.pocet_brankarov
from tim t1 join clen c on t1.id_hlavny_trener = c.id_clen join (
    select t.id_tim, count(*) as pocet_brankarov
    from tim t join hrac_tim ht on t.id_tim = ht.id_tim join hrac h on ht.id_clen = h.id_clen
    where h.post = 'goalkeeper'
    group by t.id_tim
    having count(*) >= 2
    order by pocet_brankarov desc
) r1 on t1.id_tim = r1.id_tim;
