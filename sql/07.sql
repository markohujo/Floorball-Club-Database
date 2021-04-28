select c.email, c.meno, c.priezvisko, (select extract (year from age(c.datum_narodenia)) as vek)
from clen c join trener t on c.id_clen = t.id_clen where (
    select extract (year from age(c.datum_narodenia)) < 25
);
