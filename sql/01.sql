select r1.id_clen, meno, priezvisko, email, licencia from (
    select a.id_clen
    from asistent a join tim t on a.id_tim = t.id_tim join kategoria k on t.id_kategoria = k.id_kategoria
    where k.nazov_kategoria='U16'
    -- vyber id asistentov, ktorí trénuju tím kat. U16
    except
    -- od nich odčítaj tých, ktorí trénujú tím aj inej kategórie
    select a.id_clen
    from asistent a join tim t on a.id_tim = t.id_tim join kategoria k on t.id_kategoria = k.id_kategoria
    where k.nazov_kategoria!='U16'
) r1
-- spoj s tabulkami tréner a clen kvôli potrebným údajom
join trener t on r1.id_clen = t.id_clen join clen c on t.id_clen = c.id_clen;