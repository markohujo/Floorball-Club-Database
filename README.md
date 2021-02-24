
# DBS project

Database system for a floorball club administration system developed as my project for Database Systems course.


Popis:

Florbalový klub má stovky členov, o ktorých potrebuje ukladať rôzne údaje. Väčšinu členov vo florbalovom klube tvoria **hráči**. O hráčoch je potrebné vedieť ich *meno* , *priezvisko*, *adresu*, *email* (pre potreby notifikovania hráčov o blížiacich sa udalostiach), *vek* (aby klub vedel, do ktorých vekových kategórií môže hráč patriť) a či už zaplatil členský poplatok za tento mesiac. Zvyšok florbalového klubu tvoria **zamestnanci**. Najpodstatnejšie je u zamestnancoch vedieť, aký je ich *plat* a ich *číslo účtu*. V neposlednom rade chceme evidovať aj ich *meno*, *priezvisko*, *adresu* a *email*. Zamestnancami klubu sú **tréneri** alebo **psychológovia**. U trénerov je navyše potrebné evidovať ktorý **tím** trénuje, je podstatné myslieť na to, že tréner môže byť buď hlavný tréner alebo asistent trénera toho daného tímu. Prípadne ešte aj *vek*, keďže mladším deťom viac vyhovujú mladší tréneri, no nie je to klubom vyžadované. U psychológa sa klub spokojí s evidovaním iba jedného údaju a to *počet rokov v praxi*. O každom tíme potrebujeme evidovať *počet hráčov* a predpokladané *náklady* potrebné na činnosť tímu. Tím patrí do určitej **vekovej kategórie**, to rozhoduje ako starí hráči môžu v danom tíme hrať. Pri každej vekovej kategórii evidujeme jej *názov*, *minimálny* a *maximálny vek* hráčov. Každý jeden tím každej vekovej kategórie sa môže zúčastnovať **udalostí**. Zo začiatku chce tento klub svojim tímom ponúkať iba tri rôzne udalosti - **tréning**, **zápas** a **teambuilding**. O každej udalosti klub potrebujeme vedieť *dátum* a *čas* jej uskutočnenia a adresu, kde sa udalosť uskutoční. Adresa sa klasicky skladá z *ulice*, *čísla*, *mesta* a *PSČ*. *Náklady* potrebné na jej zrealizovanie chce klub evidovať iba v prípade, že sa členovia tímu nerozhodnú udalosť zaplatiť sami. V takom prípade sú náklady pre klub nulové. Pri tréningu aj zápase je okrem adresy nutné evidovať aj názov telocvične. Pri zápase potrebujeme ešte vedieť *súpera*, s ktorým bude tím hrať. V prípade teambuildingu nám stačí vedieť o aký *typ udalosti* ide (klub zatiaľ ponúka iba escape room a bowling, no členovia môžu prísť s novými návrhmi).


Dotazy:

1. Počet hráčov tímu XY.
2. Počet hráčov kategórie U18, ktorí majú maximálny vek (18).
3. Ktorí hráči tímu XY ešte nezaplatili členský poplatok?
4. Počet zamestnancov, ktorí majú plat väčší ako 1000.
5. Ktorí zamestnanci majú plat väčší ako 1000?


