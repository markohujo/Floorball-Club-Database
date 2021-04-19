select * from kategoria k where not exists (
    select 1 from tim t where k.id_kategoria = t.id_kategoria
);