select c.id_clen, c.meno, c.priezvisko, c.email, t.licencia
from clen c join trener t on c.id_clen = t.id_clen
and plat > 20000