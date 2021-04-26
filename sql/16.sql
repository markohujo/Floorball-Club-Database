begin;
insert into asistent
select id_clen, id_tim from (
    select id_clen, id_tim from trener cross join tim
    except
    select id_clen, id_tim from asistent -- aby sa nestalo, ze pridam timu asistenta, ktoreho uz ma
) r1
order by random() limit 1;
rollback;
