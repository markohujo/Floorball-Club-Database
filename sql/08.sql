select count(*) as pocet_hracov from
hrac_tim h join tim t on h.id_tim = t.id_tim and t.nazov_tim = 'Team A';
