select t.nazov_tim, (select count(*) from hrac_tim ht where ht.id_tim = t.id_tim) as pocet_hracov
from tim t
order by pocet_hracov desc;