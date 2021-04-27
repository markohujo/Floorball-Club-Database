select t.nazov_tim, r1.pocet_hracov from tim t join (
    select ht.id_tim, count(*) as pocet_hracov from hrac_tim ht join clen c2 on ht.id_clen = c2.id_clen group by ht.id_tim
) r1 on t.id_tim = r1.id_tim
order by r1.pocet_hracov desc;
