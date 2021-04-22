select c.email, c.meno, c.priezvisko
from clen c join trener using (id_clen) where (
    select extract (year from age(datum_narodenia)) < 25
);