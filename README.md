
# DBS project

Database system for a floorball club administration system developed as my project for Database Systems course.


## **Popis:** <!-- 1. KB -->

Florbalový klub má stovky **členov**, o ktorých potrebuje evidovať *meno*, *priezvisko*, adresu, *email* (pre potreby notifikovania o blížiacich sa udalostiach) a prípadne aj *telefónne číslo*. **Adresa** sa klasicky skladá z *ulice*, *čísla*, *mesta* a *PSČ*. Členmi klubu sú hráči a tréneri a nie je vylúčené, že člen môže byť zároveň hráčom aj trénerom.

O **hráčoch** je potrebné vedieť ich *vek* (aby klub vedel, do ktorých vekových kategórií môže hráč patriť) a či už *zaplatil* členský poplatok. Pri **tréneroch** je najpotrebnejšie poznať ich *plat* a *číslo účtu* a v neposlednom rade aj ktoré tímy trénujú a akú najvyššiu *licenciu* majú dosiahnutú. Je podstatné myslieť na to, že tréner môže byť buď hlavný tréner alebo asistent trénera daného tímu. Hlavným trénerom môže byť maximálne jedného tímu, asistentom maximálne dvoch tímov a keďže je klubom platený, musí nejakým spôsovom trénovať minimálne jeden tím. Keďže je potrebné, aby bol tréner *plnoletý*, chceme evidovať aj túto informáciu. Presný *vek* trénerov avšak nie je klubom vyžadovaný, ale s udeleným súhlasom ho je možné evidovať, keďže mladším deťom viac vyhovujú mladší tréneri.

O každom **tíme** potrebujeme evidovať jeho unikátny *názov* a *počet hráčov*. Každý tím patrí do určitej **vekovej kategórie**, to rozhoduje ako starí hráči môžu v danom tíme hrať. Pri každej vekovej kategórii je daný *minimálny* a *maximálny možný vek* hráčov súťažiacich v danej kategórii a jej unikátny *názov*.

Každý tím sa môže zúčastnovať **udalostí**. O každej udalosti klub potrebuje evidovať *dátum* a *čas* jej uskutočnenia. Udalosť je nejakého **typu**, o ktorom chceme evidovať iba *názov*, ktorý objasňuje o akú udalosť ide. Napríklad zápas, tréning, teambuilding (escape room, bowling), atp. Ponuka udalostí sa môže v budúcnosti rozširovať, keďže členovia tímov môžu prísť s vlastnými nápadmi.

Pri udalostiach typu **zápas**  a **tréning** je potrebné evidovať ešte daľšie údaje. Pri zápasoch je potrebné vedieť *súpera*, proti ktorému budeme hrať, v prípade profesionálnejších súťaží je pre taktické potreby možné evidovať aj jeho *umiestenie* v tabulke a prípadne aj *náklady*, napríklad na dopravu, ubytovanie, prenájom haly, atp, no nie je to vždy potrebné, napríklad v prípade individuálnej dopravy členov tímu na zápas vonku. O tréningu chceme evidovať jeho *zameranie* (taktický, kondičný, hrací, ...). Ďalej pri týchto dvoch športových udalostiach je nutné evidovať **halu**, v ktorej sa uskutočnia. Hala sa nachádza na nejakej adrese a ďalej chceme ešte evidovať *počet šatní*, *počet divákov* a prípadne aj možnosť občerstvenia v *bufete*.

## **IO:** <!-- 2. KB -->
IO1: Tím môže mať maximálne 3 asistentov.
IO2: Tím môže mať maximálne 20 hráčov.
IO3: Tím musí mať minimaĺne 10 hráčov.
IO4: Hráč môže hrať maximálne v 3 tímoch.
IO5: Člen nemôže trénovať a zaróveň hrať v tom istom tíme.

## **Dotazy:**

- Hráči tímu XY, ktorí ešte nezaplatili členský poplatok. <!-- 1. KB -->
- Emaily všetkých hráčov v tíme XY. <!-- 1. KB -->
- Vekové kategórie, v ktorých klub nemá ani jeden tím. <!-- 1. KB -->

#### **Kategoria D:**
- Vyber haly, v ktorých sa uskutoční udalosť **VŠETKÝCH** tímov.
- Vyber halu, v ktorej sa uskutočnia **VŠETKY** športové udalosti tímu XY.

#### **Kategoria C:**
- Hráči, ktorí hrajú **IBA** v tíme s id 4 (a v žiadnom inom).
- Vekové kategórie, v ktorých má klub **IBA** jeden tím.
- Tréneri, ktorí su asistentom trénera **IBA** jedného tímu.
- Členovia, ktorí sú **IBA** trénermi.
- Tímy, ktoré trénuje **IBA** tréner s id 4 (a nikto iný).

<!-- Other -->
#### **Other:**
- Zamestnanci, ktorí majú plat väčší ako 1000?
- Tréneri, ktorí su asistentami trénera v aspoň jednom tíme.
- Psychológovia s minimálne 5 rokmi praxe.
- Vekové kategórie, v ktorých je minimálne 1 tím.
- Všetky dalosti, ktoré platí klub (= majú atribút naklády)
- Naplánované udalosti tímu XY v najbližších x týždňoch.
- Tréneri, ktorí majú menej ako 25 rokov.


