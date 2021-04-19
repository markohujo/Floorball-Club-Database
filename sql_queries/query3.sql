select c.email from
clen c join hrac using(id_clen) join hrac_tim using (id_clen)
where id_tim=15;

-- Emaily všetkých hráčov v tíme s id 15.
