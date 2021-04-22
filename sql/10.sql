select t.nazov_tim,
       k.nazov_kategoria as kategoria,
       c.meno as trener_meno,
       c.priezvisko as trener_priezvisko,
       (select count(*) from hrac_tim ht where ht.id_tim = t.id_tim) as pocet_hracov
from tim t join kategoria k on t.id_kategoria = k.id_kategoria join trener t2 on t.id_hlavny_trener = t2.id_clen join clen c on t2.id_clen = c.id_clen
order by pocet_hracov desc;
