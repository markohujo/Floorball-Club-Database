
# DBS project

Database system for a floorball club administration system developed as my project for Database Systems course.

[Conceptual model](img/conceptual.png)  
[Relational model](img/relational.png)

## Popis:

Florbalový klub má stovky **členov**, o ktorých potrebuje evidovať *meno*, *priezvisko*, adresu, *email* (pre potreby notifikovania o blížiacich sa udalostiach), *vek* (keďže tréneri musia byť plnoletý a zároveň mladšie deti preferujú mladších trénerov a hráči môžu hrať iba v svojej, prípadne staršej vekovej kategórii) a prípadne aj *telefónne číslo*. **Adresa** sa klasicky skladá z *ulice*, *čísla*, *mesta* a *PSČ*. Členmi klubu sú hráči a tréneri a nie je vylúčené, že dospelý člen môže byť zároveň hráčom aj trénerom.

O **hráčoch** je potrebné vedieť, či už *zaplatili* členský poplatok. Pri **tréneroch** je najpotrebnejšie poznať ich *plat* a samo*číslo účtu* a v neposlednom rade aj ktoré tímy trénujú a akú najvyššiu *licenciu* majú dosiahnutú. Je podstatné myslieť na to, že tréner môže byť buď hlavný tréner alebo asistent trénera daného tímu. Hlavným trénerom môže byť maximálne jedného tímu, asistentom maximálne dvoch tímov a keďže je klubom platený, musí nejakým spôsovom trénovať minimálne jeden tím.

O každom **tíme** potrebujeme evidovať jeho unikátny *názov* a *počet hráčov*. Každý tím patrí do určitej **vekovej kategórie**, to rozhoduje ako starí hráči môžu v danom tíme hrať. Pri každej vekovej kategórii je daný *minimálny* a *maximálny možný vek* hráčov súťažiacich v danej kategórii a jej unikátny *názov*.

Každý tím sa môže zúčastnovať **udalostí**. O každej udalosti klub potrebuje evidovať *dátum* a *čas* jej uskutočnenia. Udalosť je nejakého **typu**, o ktorom chceme evidovať iba *názov*, ktorý objasňuje o akú udalosť ide. Napríklad zápas, tréning, teambuilding (escape room, bowling), atp. Ponuka udalostí sa môže v budúcnosti rozširovať, keďže členovia tímov môžu prísť s vlastnými nápadmi.

Pri udalostiach typu **zápas**  a **tréning** je potrebné evidovať ešte daľšie údaje. Pri zápasoch je potrebné poznať *súpera*, proti ktorému budeme hrať, v prípade profesionálnejších súťaží je pre taktické potreby možné evidovať aj jeho *umiestenie* v tabulke a prípadne aj *náklady*, napríklad na dopravu, ubytovanie, prenájom haly, atp., no nie je to vždy potrebné, napríklad v prípade individuálnej dopravy členov tímu na zápas vonku. O tréningu chceme evidovať jeho *zameranie* (taktický, kondičný, hrací, ...). Ďalej pri týchto dvoch športových udalostiach je nutné evidovať **halu**, v ktorej sa uskutočnia. Hala sa nachádza na nejakej adrese a ďalej chceme ešte evidovať *počet šatní*, *počet divákov* a prípadne aj možnosť občerstvenia v *bufete*.


## IO:
- IO1: Hráč môže hrať maximálne v 3 tímoch.
- IO2: Tréner musí mať minimálne 18 rokov.
- IO3: Hráč musí splniť vekovú podmienku kategórie pre hranie v tíme.
- IO4: Člen nemôže trénovať a zaróveň hrať v tom istom tíme.

## Dotazy:

1. Tréneri (id_clen, meno, priezvisko, email, licencia, plat), ktorí sú asistentom trénera **IBA** v tímoch kategórie U16.
   [SQL](sql/01.sql)
   
2. Tímy (id_tim, nazov_tim), ktoré sa zúčastnia **VŠETKÝCH** typov udalostí.
   [SQL](sql/02.sql)
   
3. Email, meno a priezvisko hráčov tímu Team U16 B, ktorí ešte nezaplatili členský poplatok.
   [SQL](sql/03.sql)
   
4. Vekové kategórie, v ktorých klub nemá ani jeden tím.
   [SQL](sql/04.sql)
   
5. Tréneri (id_clen, meno, priezvisko, email, licencia), ktorí majú plat väčší ako 20000.
   [SQL](sql/05.sql)
   
6. Haly, v ktorých sa neuskutoční žiadny zápas.
   [SQL](sql/06.sql)
   
7. Tréneri (email, meno, priezvisko), ktorí majú menej ako 25 rokov.
   [SQL](sql/07.sql)
   
8. Počet hráčov v tíme Team A.
   [SQL](sql/08.sql)
   
9. Tréneri (id_clen, email, meno, priezvisko, licencia), ktorí nie su asistentami trénera v ani jednom tíme.
   [SQL](sql/09.sql)
   
10. Zoraď tímy podľa počtu hráčov od najväčších po najmenšie (vypíš názov tímu, kategóriu, meno a priezvisko hlavného trénera a počet hráčov).
   [SQL](sql/10.sql)
    
11. Tréneri (meno, priezvisko, plat), ktorí majú väčší plat ako priemerný plat, zorad ich podľa najviac zarábajúceho.
   [SQL](sql/11.sql)
    
12. Tímy, ktoré sa zúčastnia zápasu aj tréningu.
    [SQL](sql/12.sql)
    
13. Obrancovia A tímu spolu s brankármi A tímu (meno, priezvisko, post).
    [SQL](sql/13.sql)
    
14. Vsetkym hlavnym trenerom zdvihni plat o 10% a zaokrúhli na najbližšiu 100 (teda 20110 = 20100).
    [SQL](sql/14.sql)
    
15. Vymaž všetky udalosti typu bowling a escape room.
    [SQL](sql/15.sql)
    
16. Náhodnému tímu pridaj náhodného asistenta.
    [SQL](sql/16.sql)
    
17. Vytvor pohľad, ktorý bude zobrazovať iba skúsených hlavných trénerov (= tréner s licenciou C, ktorý je hlavným trénerom v nejakom tíme).
    [SQL](sql/17.sql)
    
18. Tímy (názov tímu, meno a priezvisko hlavného trénera a názov vekovej kategórie), v ktorých je hlavným trénerom skúsený tréner.
    [SQL](sql/18.sql)

- TODO:
  
    - 25 SQL + 10 RA  
      <br>
      
    - left/right outer join
    - full (outer) join
    - group by (having)
    - all in one (select, from, where, group by, having, order by)


## Smyčky:

Schéma obsahuje viacero smyčiek.

1. CLEN - TRENER - TIM - HRAC_TIM - HRAC  
Môže nastať situácia, že ten istý člen bude trénovať aj hrať v tom istom tíme, čo môže spôsobovať problémy, keďže väčšina profesionálnych súťaží toto nepovoluje,  preto som zaviedol IO4.  

2. TIM - UDALOST - ZAPAS - HALA - ADRESA - CLEN - TRENER
3. TIM - UDALOST - ZAPAS - HALA - ADRESA - CLEN - HRAC - HRAC_TIM
4. TIM - UDALOST - TRENING - HALA - ADRESA - CLEN - TRENER
5. TIM - UDALOST - TRENING - HALA - ADRESA - CLEN - HRAC - HRAC_TIM  
Posldené 4 smyčky si sú veľmi podobné, preto si ich dovolím okomentovať naraz. Tieto smyčky sú v poriadku a nepredstavujú riziko alebo potenciálne problémy s konzistenciou dát v databázi. Entita ADRESA je tzv. číselník, ktorú využívam na uloženie adresy trvalého bydliska členov klubu a športovej haly, v ktorej sa uskutoční zápas alebo tréning. Teoreticky môže nastať situácia, že člen bude bývať na rovnakej adrese, na akej sa nachádza športová hala, čo ale nepredstavuje žiadny problém, keďže takáto situácia môže nastať aj v reálnom živote a je teda korektná.
   
## Zdroje:

[1] [Course pages BI-DBS](https://courses.fit.cvut.cz/BI-DBS/)  
[2] [PostgreSQL dokumentácia](https://www.postgresql.org/docs/current/)  
[3] [Vzorová semestrálna práca Test Hunka](https://users.fit.cvut.cz/~hunkajir/dbs2/main.xml)  
[4] [Vzorová semestrálna práca Test Quast](https://users.fit.cvut.cz/~hunkajir/dbs/main.xml)  
[5] J. Pokorný, M.Valenta: Databázové systémy, Praha : Česká technika - nakladatelství ČVUT, 2020, ISBN: 978-80-01-06696-6  
[6] [Generátor dát Mockaroo](https://www.mockaroo.com/)  
[7] [stack overflow - round to the nearest 100](https://stackoverflow.com/a/41210389)
