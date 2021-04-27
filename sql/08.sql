select t.nazov_tim, count(*) as pocet_hracov from
tim t join hrac_tim ht on t.id_tim = ht.id_tim
group by nazov_tim
order by pocet_hracov desc;