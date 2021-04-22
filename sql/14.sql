update trener set plat = round(plat * 1.1, -2)
where id_clen in (
    select tr.id_clen from trener tr join tim ti on tr.id_clen = ti.id_hlavny_trener
);
