begin;
delete from udalost where udalost.id_udalost_typ in (select id_udalost_typ from udalost_typ where popis='bowling' or popis='escape room');
rollback;