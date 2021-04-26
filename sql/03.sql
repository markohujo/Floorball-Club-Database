select c.email, c.meno, c.priezvisko from
    clen c join hrac h on c.id_clen = h.id_clen join
    hrac_tim h_t on h.id_clen = h_t.id_clen and zaplateny_poplatok = false join
    tim t on h_t.id_tim = t.id_tim and nazov_tim = 'Team U16 B';
