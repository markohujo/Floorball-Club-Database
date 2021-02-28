1
# DBS project

Database system for a floorball club administration system developed as my project for Database Systems course.


## **Popis:**

Florbalový klub má stovky **členov**, o ktorých potrebuje evidovať *meno*, *priezvisko*, adresu, *email* (pre potreby notifikovania o blížiacich sa udalostiach) a prípadne aj *telefónne číslo*. **Adresa** sa klasicky skladá z *ulice*, *čísla*, *mesta* a *PSČ*. Členmi klubu sú hráči a zamestnanci a nie je vylúčené, že člen môže byť zároveň hráčom aj zamestnancom.

O **hráčoch** je potrebné aj vedieť ich *vek* (aby klub vedel, do ktorých vekových kategórií môže hráč patriť) a či už *zaplatil* členský poplatok. Pri **zamestnancoch** je najpotrebnejšie poznať ich *plat* a *číslo účtu*. Zamestnancami klubu sú tréneri a psychológovia, pričom jedna osoba môže kľudne vykonávať obe úlohy.

U **trénerov** je ešte potrebné evidovať ktorý tím trénujú a akú najvyššiu *certifikáciu* majú dosiahnutú. Je podstatné myslieť na to, že tréner môže byť buď hlavný tréner alebo asistent trénera daného tímu. Hlavným trénerom môže byť maximálne jedného tímu, asistentom maximálne dvoch tímov a keďže je klubom platený, musí trénovať minimálne jeden tím. Prípadne je možné evidovať ešte aj *vek* trénerov, keďže mladším deťom viac vyhovujú mladší tréneri, no nie je to klubom vyžadované. U **psychológov** klubu stačí evidovať iba *počet rokov v praxi*.

O každom **tíme** potrebujeme evidovať jeho *názov* a *počet hráčov* v tíme. Každý tím patrí do **vekovej kategórie**, to rozhoduje ako starí hráči môžu v danom tíme hrať. Pri každej vekovej kategórii evidujeme jej *názov*, *minimálny* a *maximálny vek* hráčov.

Každý jeden tím každej vekovej kategórie sa môže zúčastnovať **udalostí**. Zo začiatku chce klub svojim tímom ponúkať iba tri udalosti - tréning, zápas a teambuilding O každej udalosti klub potrebuje evidovať *dátum* a *čas* jej uskutočnenia a adresu, kde sa udalosť uskutoční. Členovia tímu sa môžu rozhodnúť, že si danú udalosť zaplatia sami, čo finančne klubu veľmi pomôže. V takom prípade náklady na zrealizovanie udalosti klub nepotrebuje evidovať, keďže sú pre klub nulové.

Pri **tréningu** aj zápase je okrem adresy nutné evidovať aj *názov telocvične*. Pri **zápase** potrebujeme ešte poznať *súpera*, s ktorým bude tím hrať. V prípade **teambuildingu** nám stačí vedieť o aký *typ udalosti* ide (klub zatiaľ ponúka iba escape room a bowling, no členovia môžu prísť s novými návrhmi).


## **Dotazy:**

- Ktorí hráči tímu XY ešte nezaplatili členský poplatok?
- Ktorí zamestnanci majú plat väčší ako 1000?
- Tréneri, ktorí majú menej ako 25 rokov.
- Tréneri, ktorí su asistentami trénera v aspoň jednom tíme.
- Psychológovia s minimálne 5 rokmi praxe.
- Vekové kategórie, v ktorých je minimálne 1 tím.
- Emaily všetkých hráčov v tíme XY.
- Všetky dalosti, ktoré platí klub (= majú atribút naklády)


