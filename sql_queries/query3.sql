select id_clen, meno, priezvisko, email, licencia, plat
    from (
        select a.id_clen from asistent a join tim using(id_tim) join kategoria k using(id_kategoria) where k.nazov='U18'
        -- vyber id asistentov, ktorí trénuju tím kat. U18
        except
        -- od nich odčítaj tých, ktorí trénujú tím aj inej kategórie
        select a.id_clen from asistent a join tim using(id_tim) join kategoria k using(id_kategoria) where k.nazov!='U18'
    ) r1
    -- spoj s tabulkami tréner a clen kvôli potrebným údajom
    join trener using (id_clen) join clen using (id_clen);

-- Nájdi trénerov, ktorí sú asistentom trénera **IBA** v tíme kategórie U18.