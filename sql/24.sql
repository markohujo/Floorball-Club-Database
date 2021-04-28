select h.nazov_hala, a.ulica, a.cislo, a.psc, a.mesto from
adresa a join hala h on a.id_adresa = h.id_adresa and h.bufet = true;