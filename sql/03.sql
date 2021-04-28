select c.email, c.meno, c.priezvisko
from tim t join hrac_tim ht on t.id_tim = ht.id_tim and t.nazov_tim = 'Team U16 B' and ht.zaplateny_poplatok = false
join hrac h on ht.id_clen = h.id_clen
join clen c on h.id_clen = c.id_clen;
