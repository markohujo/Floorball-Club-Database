create or replace view skuseni_hlavni_treneri as
    select * from trener t where t.licencia = 'C' and exists (
        select * from tim t2 where t.id_clen = t2.id_hlavny_trener
    )
with check option;

-- kontrola pohladu
select * from skuseni_hlavni_treneri;
