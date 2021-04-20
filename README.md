
# DBS project

Database system for a floorball club administration system developed as my project for Database Systems course.

[Conceptual model](img/model.png)
[Relational model](img/diagram.png)  

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
- Email, meno a priezvisko hráčov tímu s id 5, ktorí ešte nezaplatili členský poplatok. [SQL](sql_queries/query1.sql)
    ```postgresql
    select c.email, c.meno, c.priezvisko
    from clen c join hrac using (id_clen) join hrac_tim using (id_clen)
    where id_tim=5 and zaplateny_poplatok=false;
    ```

- Tímy (id_tim, nazov), ktoré sa zúčastnia **VŠETKÝCH** typov udalostí. [SQL]()
    ```postgresql
    -- TODO
    ```

- Nájdi trénerov, ktorí sú asistentom trénera **IBA** v tíme kategórie U18. [SQL]() 
    ```postgresql
    -- TODO
  ```

- Vekové kategórie, v ktorých klub nemá ani jeden tím. [SQL](sql_queries/query4.sql)
    ```postgresql
    select * from kategoria k where not exists (
        select 1 from tim t where k.id_kategoria = t.id_kategoria 
    );
    ```
  
- Zamestnanci, ktorí majú plat väčší ako 20000. [SQL]()
    ```postgresql
    -- TODO
    ```
    
- Tréneri, ktorí nie su asistentami trénera v ani jednom tíme. [SQL]()
    ```postgresql
    -- TODO
    ```
    
- Haly, v ktorých sa neuskutoční žiadny zápas. [SQL]()
    ```postgresql
    -- TODO
    ```
  
- Naplánované udalosti tímu XY v najbližších 2 týždňoch. [SQL]()
    ```postgresql
    -- TODO
    ```
  
- Tréneri (email, meno, priezvisko), ktorí majú menej ako 25 rokov. [SQL](sql_queries/query9.sql)
    ```postgresql
    select c.email, c.meno, c.priezvisko
    from clen c join trener using (id_clen)
    where (select extract (year from age(datum_narodenia)) < 25);
    ```

- Počet hráčov v tíme s id 15. [SQL](sql_queries/query10.sql)
    ```postgresql
    select count(*) from tim join hrac_tim using (id_tim) where id_tim=15;
    ```

## Smyčky:

Schéma obsahuje viacero smyčiek.

1. CLEN - TRENER - TIM - HRAC_TIM - HRAC  
Môže nastať situácia, že ten istý člen bude trénovať aj hrať v tom istom tíme, čo môže spôsobovať problémy, keďže väčšina profesionálnych súťaží toto nepovoluje,  preto som zaviedol IO4.  

2. TIM - UDALOST - ZAPAS - HALA - ADRESA - CLEN - TRENER
3. TIM - UDALOST - ZAPAS - HALA - ADRESA - CLEN - HRAC - HRAC_TIM
4. TIM - UDALOST - TRENING - HALA - ADRESA - CLEN - TRENER
5. TIM - UDALOST - TRENING - HALA - ADRESA - CLEN - HRAC - HRAC_TIM  
Posldené 4 smyčky si sú veľmi podobné, preto si ich dovolím okomentovať naraz. Tieto smyčky sú v poriadku a nepredstavujú riziko alebo potenciálne problémy s konzistenciou dát v databázi. Entita ADRESA je tzv. číselník, ktorú využívam na uloženie adresy trvalého bydliska členov klubu a športovej haly, v ktorej sa uskutoční zápas alebo tréning. Teoreticky môže nastať situácia, že člen bude bývať na rovnakej adrese, na akej sa nachádza športová hala, čo ale nepredstavuje žiadny problém, keďže takáto situácia môže nastať aj v reálnom živote a je teda korektná.


