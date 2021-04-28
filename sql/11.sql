select c.meno, c.priezvisko, t.plat
from trener t join clen c on t.id_clen = c.id_clen
where plat > (select avg(plat) from trener)
order by plat desc;
