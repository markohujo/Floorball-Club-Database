-- aby fungoval dotaz 18, je potrebne vytvorit pohlad v dotaze 17

select t.nazov_tim, c.meno as meno_trener, c.priezvisko as priezvisko_trener, k.nazov_kategoria as kategoria from
tim t join clen c on c.id_clen = t.id_hlavny_trener join kategoria k on t.id_kategoria = k.id_kategoria where exists (
    select * from skuseni_hlavni_treneri s where t.id_hlavny_trener = s.id_clen
);

drop view skuseni_hlavni_treneri;