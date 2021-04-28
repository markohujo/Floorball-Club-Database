begin;
insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (1, null, 'Team Just For Fun With No Coach');
-- pridaj tím bez trénera, keďže taky neevidujeme

select coalesce(c.meno, 'BEZ TRENERA') as trener_m,
       coalesce(c.priezvisko, 'BEZ TRENERA')as trener_p,
       coalesce(t2.licencia, 'BEZ TRENERA') as trener_licencia,
       coalesce(t.nazov_tim, 'NETRENUJE') as tim_nazov
from tim t full join trener t2 on t.id_hlavny_trener = t2.id_clen left join clen c on t2.id_clen = c.id_clen
order by c.priezvisko, c.meno;

rollback;