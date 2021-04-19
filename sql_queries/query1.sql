select c.email, c.meno, c.priezvisko
from clen c join hrac using (id_clen) join hrac_tim using (id_clen)
where id_tim=5 and zaplateny_poplatok=false;

-- Email, meno a priezvisko hráčov tímu s id 5, ktorí ešte nezaplatili členský poplatok.