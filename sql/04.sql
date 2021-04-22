select * from kategoria k where not exists (
    -- vyber kategorie, pre kt. neexistuje ziadny tim
    select 1 from tim t where k.id_kategoria = t.id_kategoria
);