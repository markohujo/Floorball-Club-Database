select c.meno, c.priezvisko, h.post from (
    select h.id_clen from tim t join hrac_tim ht on t.id_tim = ht.id_tim and t.nazov_tim = 'Team A' join hrac h on ht.id_clen = h.id_clen and h.post = 'goalkeeper'
    union
    select h.id_clen from tim t join hrac_tim ht on t.id_tim = ht.id_tim and t.nazov_tim = 'Team A' join hrac h on ht.id_clen = h.id_clen and h.post = 'defender'
) r1 join clen c on r1.id_clen = c.id_clen join hrac h on c.id_clen = h.id_clen;
