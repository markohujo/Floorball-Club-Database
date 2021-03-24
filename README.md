
# DBS project

Database system for a floorball club administration system developed as my project for Database Systems course.


## **Popis:** <!-- 1. KB -->

Florbalový klub má stovky **členov**, o ktorých potrebuje evidovať *meno*, *priezvisko*, adresu, *email* (pre potreby notifikovania o blížiacich sa udalostiach) a prípadne aj *telefónne číslo*. **Adresa** sa klasicky skladá z *ulice*, *čísla*, *mesta* a *PSČ*. Členmi klubu sú hráči a tréneri a nie je vylúčené, že člen môže byť zároveň hráčom aj trénerom.

O **hráčoch** je potrebné vedieť ich *vek* (aby klub vedel, do ktorých vekových kategórií môže hráč patriť) a či už *zaplatil* členský poplatok. Pri **tréneroch** je najpotrebnejšie poznať ich *plat* a *číslo účtu* a v neposlednom rade aj ktoré tímy trénujú a akú najvyššiu *certifikáciu* majú dosiahnutú. Je podstatné myslieť na to, že tréner môže byť buď hlavný tréner alebo asistent trénera daného tímu. Hlavným trénerom môže byť maximálne jedného tímu, asistentom maximálne dvoch tímov a keďže je klubom platený, musí nejakým spôsovom trénovať minimálne jeden tím. Prípadne je možné evidovať ešte aj *vek* trénerov, keďže mladším deťom viac vyhovujú mladší tréneri, no nie je to klubom vyžadované.

O každom **tíme** potrebujeme evidovať jeho *názov* a *počet hráčov*. Každý tím patrí do určitej **vekovej kategórie**, to rozhoduje ako starí hráči môžu v danom tíme hrať. Pri každej vekovej kategórii je daný *minimálny* a *maximálny možný vek* hráčov súťažiacich v danej kategórii a jej unikátny *názov*.

Každý jeden tím každej vekovej kategórie sa môže zúčastnovať **udalostí**. Udalosť môže byť buď **teambuilding** alebo **športová udalosť**, teda **zápas** alebo **tréning**. O každej udalosti klub potrebuje evidovať *dátum* a *čas* jej uskutočnenia.

V prípade teambuildingu sa členovia tímu môžu rozhodnúť, že si danú udalosť zaplatia sami, čo finančne klubu veľmi pomôže. V takom prípade *náklady* na zrealizovanie udalosti klub nepotrebuje evidovať, keďže sú pre klub nulové. O teambuildingu chceme ďalej evidovať kde sa uskutoční a o aký presný *typ* udalosti ide (klub zatiaľ ponúka escape room a bowling, no členovia môžu prísť s novými návrhmi).

Pri každej šporotvej udalosti je potrebné evidovať *náklady*, keďže tieto v každom prípade platí klub. V prípade tréningu je ďalej potrebné vedieť, o aký *typ* tréningu ide (hrací, taktický, kondičný) a pri zápase meno *súpera*. Pri športových udalostiach je nutné evidovať **halu**, v ktorej sa uskutočnia. Hala sa nachádza na nejakej adrese a ďalej chceme ešte evidovať *počet šatní*, *počet divákov* a prípadne aj možnosť občerstvenia v *bufete* (true, false).

## **Dotazy:**

- Hráči tímu XY, ktorí ešte nezaplatili členský poplatok. <!-- 1. KB -->
- Emaily všetkých hráčov v tíme XY. <!-- 1. KB -->
- Vekové kategórie, v ktorých klub nemá ani jeden tím. <!-- 1. KB -->

<!-- Other -->
- Zamestnanci, ktorí majú plat väčší ako 1000?
- Tréneri, ktorí su asistentami trénera v aspoň jednom tíme.
- Psychológovia s minimálne 5 rokmi praxe.
- Vekové kategórie, v ktorých je minimálne 1 tím.
- Všetky dalosti, ktoré platí klub (= majú atribút naklády)
- Naplánované udalosti tímu XY v najbližších x týždňoch.
- Tréneri, ktorí majú menej ako 25 rokov.


