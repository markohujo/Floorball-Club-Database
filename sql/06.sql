select h.* from (
    select distinct h.id_hala from hala h -- vyber vsetky haly
    except
    select distinct h.id_hala from hala h join zapas z on h.id_hala = z.id_hala -- odcitaj tie, v kt. sa uskutocni zapas
) r1 join hala h on r1.id_hala = h.id_hala;