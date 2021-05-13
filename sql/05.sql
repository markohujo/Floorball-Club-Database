select id_clen, meno, priezvisko, email, plat from
clen join trener using(id_clen)
where plat > 20000;
