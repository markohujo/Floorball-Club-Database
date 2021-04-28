select u.datum, u.cas, t.zameranie, t.id_hala from
trening t join udalost u on t.id_udalost = u.id_udalost and t.zameranie='hrací' join tim t2 on u.id_tim = t2.id_tim and t2.nazov_tim='Team U18'