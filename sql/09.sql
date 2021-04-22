select c.id_clen, c.email, c.meno, c.priezvisko, t.licencia from (
    select distinct t.id_clen from trener t -- vyber vsetkych trenerov
    except
    select distinct t.id_clen from trener t join asistent a on t.id_clen = a.id_clen -- odcitaj tych, ktori su asistentom
) r1 join trener t using(id_clen) join clen c using(id_clen);

