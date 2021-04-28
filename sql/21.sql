select a.*, r1.pocet_obyvatelov from adresa a join (
    select id_adresa, count(*) as pocet_obyvatelov from clen group by id_adresa having count(*) > 1
) r1 on r1.id_adresa = a.id_adresa
order by pocet_obyvatelov desc;
