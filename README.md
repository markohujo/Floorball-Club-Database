
# DBS project

Database system for a floorball club administration system developed as my project for Database Systems course.


Popis:

Florbalový klub má stovky členov, o ktorých potrebuje ukladať údaje. Florbalový klub tvoria hráči a zamestnanci.

O **hráčoch** je potrebné vedieť ich *meno* , *priezvisko*, adresu, *email* (pre potreby notifikovania hráčov o blížiacich sa udalostiach), *vek* (aby klub vedel, do ktorých vekových kategórií môže hráč patriť) a či už zaplatil členský poplatok za tento mesiac.

**Adresa** sa klasicky skladá z *ulice*, *čísla*, *mesta* a *PSČ*.

Pri **zamestnancoch** je najpotrebnejšie poznať ich *plat* a *číslo účtu*. Okrem toho je potrebné evidovať aj *meno*, *priezvisko*, adresu a *email*. Zamestnancami klubu sú tréneri alebo psychológovia. Zamestnanec môže samozrejme pracovať ako tréner a zároveň aj ako psychológ.

U **trénerov** je ešte potrebné evidovať ktorý tím trénujú. Je podstatné myslieť na to, že tréner môže byť buď hlavný tréner alebo asistent trénera daného tímu. Hlavným trénerom môže byť maximálne jedného tímu, asistentom maximálne 3 tímov a keďže je klubom platený, musí trénovať minimálne jeden tím (ako hlavný tréner alebo asistent). Prípadne je možné evidovať ešte aj *vek* trénerov, keďže mladším deťom viac vyhovujú mladší tréneri, no nie je to klubom vyžadované. U **psychológa** sa klub uspokojí s evidovaním iba *počtu rokov v praxi*.

O každom **tíme** potrebujeme evidovať *počet hráčov* v tíme. Každý tím patrí do **vekovej kategórie**, to rozhoduje ako starí hráči môžu v danom tíme hrať. Pri každej vekovej kategórii evidujeme jej *názov*, *minimálny* a *maximálny vek* hráčov.

Každý jeden tím každej vekovej kategórie sa môže zúčastnovať **udalostí**. Zo začiatku chce klub svojim tímom ponúkať iba tri rôzne udalosti - tréning, zápas a teambuilding O každej udalosti klub potrebuje evidovať *dátum* a *čas* jej uskutočnenia a adresu, kde sa udalosť uskutoční. Členovia tímu sa môžu rozhodnúť, že si danú udalosť zaplatia sami, čo finančne klubu veľmi pomôže. V takom prípade náklady na zrealizovanie udalosti klub nepotrebuje evidovať, keďže sú pre klub nulové.

Pri **tréningu** aj zápase je okrem adresy nutné evidovať aj *názov telocvične*. Pri **zápase** potrebujeme ešte poznať *súpera*, s ktorým bude tím hrať. V prípade **teambuildingu** nám stačí vedieť o aký *typ udalosti* ide (klub zatiaľ ponúka iba escape room a bowling, no členovia môžu prísť s novými návrhmi).


Dotazy:

- Ktorí hráči tímu XY ešte nezaplatili členský poplatok?
- Ktorí zamestnanci majú plat väčší ako 1000?
- Tréneri, ktorí majú menej ako 25 rokov.
- Tréneri, ktorí su asistentami trénera v aspoň jednom tíme.
- Psychológovia s minimálne 5 rokmi praxe.
- Vekové kategórie, v ktorých je minimálne 1 tím.
- Emaily všetkých hráčov v tíme XY.
- Všetky dalosti, ktoré platí klub (= majú atribút naklády)


