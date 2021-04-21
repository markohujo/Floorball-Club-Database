select hala.* from (
    select distinct h.id_hala from hala h -- vyber vsetky haly
    except
    select distinct h.id_hala from hala h join zapas using(id_hala) -- odcitaj tie, v kt. sa uskutocni zapas
) r1 join hala using (id_hala)
;