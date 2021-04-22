select count(*) as pocet_hracov from
tim t join hrac_tim h_t on t.id_tim = h_t.id_tim and t.id_tim=7;