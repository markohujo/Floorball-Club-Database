select c.id_clen, c.meno, c.priezvisko, c.email, t.licencia
from
clen c join trener t on c.id_clen = t.id_clen where plat > 20000;


-- Tréneri (id_clen, meno, priezvisko, email, licencia), ktorí majú plat väčší ako 20000.