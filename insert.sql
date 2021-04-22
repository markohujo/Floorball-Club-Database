-- insert adresa 40 (1-5 haly), (6-40 clenovia)
insert into adresa (ulica, cislo, psc, mesto) values ('Erie', 98, 16092, 'Dasol');
insert into adresa (ulica, cislo, psc, mesto) values ('Fieldstone', 96, 81695, 'Wisła');
insert into adresa (ulica, cislo, psc, mesto) values ('Dayton', 39, 12948, 'Ulyanovsk');
insert into adresa (ulica, cislo, psc, mesto) values ('Village', 88, 58786, 'Buzhakan');
insert into adresa (ulica, cislo, psc, mesto) values ('Prairie Rose', 69, 59155, 'Krajan Suco');

insert into adresa (ulica, cislo, psc, mesto) values ('Troy', 104, 16883, 'Hörby');
insert into adresa (ulica, cislo, psc, mesto) values ('American As', 78, 90378, 'Cerrillos');
insert into adresa (ulica, cislo, psc, mesto) values ('Elgar', 69, 97984, 'Shatrovo');
insert into adresa (ulica, cislo, psc, mesto) values ('Knutson', 62, 54223, 'Sosnovyy Bor');
insert into adresa (ulica, cislo, psc, mesto) values ('Northwestern', 36, 89538, 'Guomaying');
insert into adresa (ulica, cislo, psc, mesto) values ('Westerfield', 99, 88545, 'Gufeng');
insert into adresa (ulica, cislo, psc, mesto) values ('Starling', 33, 47698, 'Daliang');
insert into adresa (ulica, cislo, psc, mesto) values ('Heffernan', 28, 72876, 'Ḩadīdah');
insert into adresa (ulica, cislo, psc, mesto) values ('Charing Cross', 60, 34484, 'Lagdo');
insert into adresa (ulica, cislo, psc, mesto) values ('Florence', 88, 73101, 'Kribi');
insert into adresa (ulica, cislo, psc, mesto) values ('Karstens', 15, 48635, 'Caloue');
insert into adresa (ulica, cislo, psc, mesto) values ('Grim', 45, 20155, 'Sangiyn Dalay');
insert into adresa (ulica, cislo, psc, mesto) values ('Merry', 80, 74744, 'Chucatamani');
insert into adresa (ulica, cislo, psc, mesto) values ('Texas', 35, 45659, 'Sucre');
insert into adresa (ulica, cislo, psc, mesto) values ('Tennessee', 24, 81465, 'Lizhuang');
insert into adresa (ulica, cislo, psc, mesto) values ('Huxley', 79, 27043, 'Kuching');
insert into adresa (ulica, cislo, psc, mesto) values ('Lakewood', 96, 51808, 'Nanlang');
insert into adresa (ulica, cislo, psc, mesto) values ('Gale', 48, 81844, 'Stockholm');
insert into adresa (ulica, cislo, psc, mesto) values ('Crownhardt', 60, 56832, 'Kuanchuan');
insert into adresa (ulica, cislo, psc, mesto) values ('Dorton', 45, 25006, 'Santa Catalina');
insert into adresa (ulica, cislo, psc, mesto) values ('Arrowood', 20, 32309, 'Hudlice');
insert into adresa (ulica, cislo, psc, mesto) values ('Ryan', 74, 63598, 'Santo Niño');
insert into adresa (ulica, cislo, psc, mesto) values ('Atwood', 60, 30586, 'Malati');
insert into adresa (ulica, cislo, psc, mesto) values ('Summerview', 10, 88292, 'Pampas');
insert into adresa (ulica, cislo, psc, mesto) values ('Anhalt', 36, 17684, 'Sa Kaeo');
insert into adresa (ulica, cislo, psc, mesto) values ('Schurz', 72, 80501, 'Emiliano Zapata');
insert into adresa (ulica, cislo, psc, mesto) values ('Heffernan', 17, 43134, 'Vievis');
insert into adresa (ulica, cislo, psc, mesto) values ('Sherman', 96, 14061, 'Leworook');
insert into adresa (ulica, cislo, psc, mesto) values ('Debra', 84, 34804, 'Sendang');
insert into adresa (ulica, cislo, psc, mesto) values ('Rowland', 107, 58665, 'Bonthe');
insert into adresa (ulica, cislo, psc, mesto) values ('Alpine', 76, 89181, 'Fushui');
insert into adresa (ulica, cislo, psc, mesto) values ('Derek', 3, 35456, 'Jesús María');
insert into adresa (ulica, cislo, psc, mesto) values ('Pine View', 98, 30203, 'Desa Nasol');
insert into adresa (ulica, cislo, psc, mesto) values ('2nd', 10, 17396, 'Gerong');
insert into adresa (ulica, cislo, psc, mesto) values ('Tony', 61, 69728, 'Vetrino');
-- end hala

-- hala
insert into hala (id_adresa, nazov_hala, pocet_divakov, pocet_satni, bufet) values (4, 'Stroman Sports', 1500, 4, true);
insert into hala (id_adresa, nazov_hala, pocet_divakov, pocet_satni, bufet) values (2, 'Hudson Center', 800, 6, true);
insert into hala (id_adresa, nazov_hala, pocet_divakov, pocet_satni, bufet) values (3, 'Eichmann Floorball Hall', 200, 3, false);
insert into hala (id_adresa, nazov_hala, pocet_divakov, pocet_satni, bufet) values (5, 'Thompson Sports Center', 250, 6, null);
insert into hala (id_adresa, nazov_hala, pocet_divakov, pocet_satni, bufet) values (1, 'Mueller Hall', 150, 6, false);
-- end hala

-- Kids(2009 and younger)       ----> 1
-- U14 (2007,2008,2009,2010)    ----> 2
-- U16(2005,2006,2007,2008)     ----> 2
-- U18(2003,2004,2005,2006)     ----> 1
-- A-TEAM(2002 and older)       ----> 1
-- TOTAL                        ----> 7

insert into kategoria (nazov_kategoria, min_rok_narodenia, max_rok_narodenia) values ('Kids', 2009, 2010);
insert into kategoria (nazov_kategoria, min_rok_narodenia, max_rok_narodenia) values ('U14', 2007, 2010);
insert into kategoria (nazov_kategoria, min_rok_narodenia, max_rok_narodenia) values ('U16', 2005, 2008);
insert into kategoria (nazov_kategoria, min_rok_narodenia, max_rok_narodenia) values ('U18', 2003, 2006);
insert into kategoria (nazov_kategoria, min_rok_narodenia, max_rok_narodenia) values ('A-TEAM', 1985, 2002);

-- insert clen 2009, 2010 (id 1 - 10)
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (28, 'rpatkin0@nymag.com', 'Rae', 'Patkin', '2009-10-14', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (37, 'kscarrott1@mashable.com', 'Kerrie', 'Scarrott', '2009-10-17', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (40, 'fattle2@hp.com', 'Franz', 'Attle', '2009-12-09', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (11, 'kcanet3@friendfeed.com', 'Kathryne', 'Canet', '2009-06-29', '276-422-7368');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (16, 'amacdermid4@g.co', 'Abdul', 'MacDermid', '2009-06-14', '511-103-5010');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (31, 'ipatis5@mayoclinic.com', 'Iseabal', 'Patis', '2009-01-06', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (30, 'rpengilley6@blinklist.com', 'Roman', 'Pengilley', '2009-04-22', '644-534-1978');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (26, 'abrahmer7@dailymail.co.uk', 'Alicia', 'Brahmer', '2009-06-05', '773-436-7043');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (19, 'moakes8@wikia.com', 'Meryl', 'Oakes', '2009-04-29', '104-524-7902');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (11, 'cfowlds9@chron.com', 'Carey', 'Fowlds', '2009-04-13', '780-807-4261');

-- insert clen 2007, 2008 (id 11 - 20)
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (26, 'blegister0@comcast.net', 'Barn', 'Legister', '2007-07-16', '683-468-8478');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (31, 'gcross1@phoca.cz', 'Gerti', 'Cross', '2007-10-07', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (34, 'cbowley2@scribd.com', 'Cyndy', 'Bowley', '2007-04-22', '917-381-8279');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (34, 'sbowkley3@webnode.com', 'Sherry', 'Bowkley', '2007-05-20', '334-834-3555');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (39, 'vevennett4@unesco.org', 'Valaree', 'Evennett', '2007-09-22', '162-634-4388');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (13, 'tmokes5@smugmug.com', 'Theressa', 'Mokes', '2007-10-18', '592-371-2549');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (38, 'lcaswill6@nymag.com', 'Lorenzo', 'Caswill', '2007-12-22', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (39, 'adowding7@xinhuanet.com', 'Aldin', 'Dowding', '2007-06-28', '520-139-2875');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (36, 'mdennett8@whitehouse.gov', 'Miguel', 'Dennett', '2007-11-20', '687-601-7885');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (25, 'cfaulder9@ucoz.ru', 'Corney', 'Faulder', '2007-08-01', null);

-- insert clen 2005, 2006 (id 21 - 30)
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (39, 'abranchflower0@mit.edu', 'Alexio', 'Branchflower', '2005-02-16', '935-731-4601');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (19, 'abattista1@forbes.com', 'Alli', 'Battista', '2005-08-03', '858-216-8369');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (24, 'rschmuhl2@wired.com', 'Rosemaria', 'Schmuhl', '2005-06-13', '801-798-8828');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (28, 'bdumphrey3@google.it', 'Baryram', 'Dumphrey', '2005-12-17', '634-322-1024');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (35, 'rbonnick4@twitter.com', 'Renaldo', 'Bonnick', '2005-10-09', '210-588-3037');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (23, 'reskrigg5@imgur.com', 'Renelle', 'Eskrigg', '2005-02-10', '514-316-1054');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (24, 'bthuillier6@unicef.org', 'Brenna', 'Thuillier', '2005-07-07', '236-179-7661');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (18, 'iduligall7@ebay.com', 'Irv', 'Duligall', '2005-08-25', '407-401-5013');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (26, 'charler8@youku.com', 'Clyde', 'Harler', '2005-11-10', '664-440-0291');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (36, 'medis9@cargocollective.com', 'Merralee', 'Edis', '2005-09-08', '625-718-8078');

-- insert clen 2003, 2004 (id 31 - 40)
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (23, 'jchurchward0@reverbnation.com', 'Jessalin', 'Churchward', '2003-02-12', '156-232-7511');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (40, 'bpeevor1@mozilla.com', 'Briant', 'Peevor', '2003-08-20', '889-439-9599');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (31, 'maveson2@fastcompany.com', 'Marianne', 'Aveson', '2003-03-24', '390-406-1855');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (37, 'pcornner3@slashdot.org', 'Pascale', 'Cornner', '2003-12-17', '623-601-1983');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (8, 'mbearcroft4@sogou.com', 'Matthus', 'Bearcroft', '2003-07-25', '195-958-1548');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (33, 'pbostick5@symantec.com', 'Paco', 'Bostick', '2003-05-08', '389-906-0516');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (9, 'giacobassi6@bravesites.com', 'Gauthier', 'Iacobassi', '2003-01-03', '941-806-1031');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (22, 'dsimonds7@cmu.edu', 'Desmund', 'Simonds', '2003-02-24', '331-698-7310');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (37, 'ceames8@usgs.gov', 'Cyb', 'Eames', '2003-12-26', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (29, 'apenticoot9@huffingtonpost.com', 'Andra', 'Penticoot', '2003-05-18', '731-429-8618');

-- insert clen 1980 - 2002 id (41 - 60)
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (21, 'gbarnes0@wordpress.org', 'Garrek', 'Barnes', '2001-07-10', '997-913-6944');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (31, 'egorrie1@shop-pro.jp', 'Elie', 'Gorrie', '1988-07-17', '389-679-6258');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (38, 'kshields2@springer.com', 'Kanya', 'Shields', '1988-12-30', '613-739-1887');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (15, 'netherton3@bbc.co.uk', 'Nero', 'Etherton', '1990-05-14', null);
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (36, 'tmenhci4@dedecms.com', 'Thatch', 'Menhci', '1982-03-20', '567-897-2604');

insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (28, 'kflute5@ucoz.com', 'Karlan', 'Flute', '1984-11-08', '988-296-1701');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (30, 'bmorby6@narod.ru', 'Bevan', 'Morby', '1999-10-27', '494-746-1196');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (28, 'jkitto7@last.fm', 'Jaymee', 'Kitto', '1989-04-17', '145-434-2990');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (10, 'rfoulkes8@blog.com', 'Rachele', 'Foulkes', '1996-11-22', '757-682-1547');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (26, 'dewenson9@blinklist.com', 'Dyane', 'Ewenson', '1989-01-06', '464-775-2474');

insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (40, 'jsepeya@netlog.com', 'Joceline', 'Sepey', '1993-12-04', '435-355-8587');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (33, 'fshealb@senate.gov', 'Fabien', 'Sheal', '1985-06-23', '187-674-1822');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (7, 'cdarkc@comcast.net', 'Casar', 'Dark', '1991-08-08', '809-806-6899');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (34, 'cravend@usnews.com', 'Clywd', 'Raven', '1991-05-19', '451-891-5779');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (7, 'ayelde@wufoo.com', 'Adriano', 'Yeld', '1983-01-12', '355-950-9473');

insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (34, 'elimbournef@stumbleupon.com', 'Ezri', 'Limbourne', '1993-10-05', '398-780-3244');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (16, 'pmogenotg@tuttocitta.it', 'Phylis', 'Mogenot', '1999-02-22', '950-998-7650');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (40, 'ctomkowiczh@nbcnews.com', 'Celene', 'Tomkowicz', '1994-10-31', '518-185-2651');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (40, 'lpolki@artisteer.com', 'Linus', 'Polk', '1983-12-12', '797-895-9041');
insert into clen (id_adresa, email, meno, priezvisko, datum_narodenia, telefon) values (32, 'csoutheyj@seesaa.net', 'Cymbre', 'Southey', '1990-11-28', '589-820-2946');

-- insert trener (musi mat min 18 rokov ==> id >= 41 and id <= 60)
insert into trener (id_clen, licencia, cislo_uctu, plat) values (47, 'B', 'SA45 49RD IDZM HRP9 G2TH 9KOT', 22500);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (53, 'C', 'MU74 IRPT 1646 0532 2010 7121', 20000);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (45, 'A', 'MR69 7753 2118 4804 6900 3549', 17500);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (46, 'C', 'ES08 5095 6496 5465 7493 3773', 25000);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (55, 'B', 'BR86 9204 1318 4933 8756 5315', 22500);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (54, 'C', 'FR32 6655 2446 77JX SOEX YLO2', 15000);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (59, 'B', 'AL34 5994 7435 DPPO ALEU 5XBE', 15000);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (42, 'A', 'HR71 5409 9724 3953 1493 8XAD', 17500);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (51, 'B', 'GR02 6675 2100 QD1J ZCZK AZEI', 30000);
insert into trener (id_clen, licencia, cislo_uctu, plat) values (52, 'C', 'MC82 3534 0625 64FO 0IU9 EFXS', 25000);

-- insert hrac (45, 46, 52, 55, 59 su iba treneri)
insert into hrac (id_clen, post) values (1, 'goalkeeper');
insert into hrac (id_clen, post) values (2, 'winger');
insert into hrac (id_clen, post) values (3, 'defender');
insert into hrac (id_clen, post) values (4, 'center forward');
insert into hrac (id_clen, post) values (5, 'winger');
insert into hrac (id_clen, post) values (6, 'center forward');
insert into hrac (id_clen, post) values (7, 'goalkeeper');
insert into hrac (id_clen, post) values (8, 'winger');
insert into hrac (id_clen, post) values (9, 'goalkeeper');
insert into hrac (id_clen, post) values (10, 'defender');
insert into hrac (id_clen, post) values (11, 'defender');
insert into hrac (id_clen, post) values (12, 'goalkeeper');
insert into hrac (id_clen, post) values (13, 'defender');
insert into hrac (id_clen, post) values (14, 'defender');
insert into hrac (id_clen, post) values (15, 'center forward');
insert into hrac (id_clen, post) values (16, 'winger');
insert into hrac (id_clen, post) values (17, 'goalkeeper');
insert into hrac (id_clen, post) values (18, 'defender');
insert into hrac (id_clen, post) values (19, 'winger');
insert into hrac (id_clen, post) values (20, 'center forward');
insert into hrac (id_clen, post) values (21, 'center forward');
insert into hrac (id_clen, post) values (22, 'defender');
insert into hrac (id_clen, post) values (23, 'winger');
insert into hrac (id_clen, post) values (24, 'goalkeeper');
insert into hrac (id_clen, post) values (25, 'defender');
insert into hrac (id_clen, post) values (26, 'center forward');
insert into hrac (id_clen, post) values (27, 'winger');
insert into hrac (id_clen, post) values (28, 'center forward');
insert into hrac (id_clen, post) values (29, 'defender');
insert into hrac (id_clen, post) values (30, 'winger');
insert into hrac (id_clen, post) values (31, 'center forward');
insert into hrac (id_clen, post) values (32, 'defender');
insert into hrac (id_clen, post) values (33, 'center forward');
insert into hrac (id_clen, post) values (34, 'defender');
insert into hrac (id_clen, post) values (35, 'defender');
insert into hrac (id_clen, post) values (36, 'winger');
insert into hrac (id_clen, post) values (37, 'goalkeeper');
insert into hrac (id_clen, post) values (38, 'winger');
insert into hrac (id_clen, post) values (39, 'defender');
insert into hrac (id_clen, post) values (40, 'defender');
insert into hrac (id_clen, post) values (41, 'defender');
insert into hrac (id_clen, post) values (42, 'center forward');
insert into hrac (id_clen, post) values (43, 'center forward');
insert into hrac (id_clen, post) values (44, 'defender');
insert into hrac (id_clen, post) values (47, 'goalkeeper');
insert into hrac (id_clen, post) values (48, 'defender');
insert into hrac (id_clen, post) values (49, 'center forward');
insert into hrac (id_clen, post) values (50, 'center forward');
insert into hrac (id_clen, post) values (51, 'center forward');
insert into hrac (id_clen, post) values (53, 'winger');
insert into hrac (id_clen, post) values (54, 'goalkeeper');
insert into hrac (id_clen, post) values (56, 'center forward');
insert into hrac (id_clen, post) values (57, 'defender');
insert into hrac (id_clen, post) values (58, 'center forward');
insert into hrac (id_clen, post) values (60, 'center forward');

insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (1, 51, 'Team Kids Monkeys');
insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (2, 52, 'Team U14 Blue');
insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (2, 59, 'Team U14 Orange');
insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (3, 46, 'Team U16 A');
insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (3, 55, 'Team U16 B');
insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (4, 47, 'Team U18 Blue');
insert into tim (id_kategoria, id_hlavny_trener, nazov_tim) values (5, 45, 'Team A');

insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (1, 1, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (2, 1, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (3, 1, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (4, 1, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (5, 1, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (6, 1, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (7, 1, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (8, 1, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (9, 1, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (10, 1, true);

insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (11, 2, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (12, 2, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (13, 2, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (14, 2, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (15, 2, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (8, 2, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (2, 2, true);

insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (16, 3, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (17, 3, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (18, 3, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (19, 3, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (20, 3, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (11, 3, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (12, 3, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (4, 3, true);

insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (21, 4, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (22, 4, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (23, 4, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (24, 4, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (25, 4, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (26, 4, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (18, 4, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (15, 4, true);

insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (30, 5, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (27, 5, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (28, 5, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (29, 5, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (26, 5, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (21, 5, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (17, 5, false);

insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (31, 6, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (32, 6, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (33, 6, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (34, 6, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (35, 6, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (36, 6, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (37, 6, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (38, 6, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (39, 6, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (40, 6, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (30, 6, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (27, 6, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (25, 6, true);

-- 45, 46, 52, 55, 59 su iba treneri
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (41, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (42, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (33, 7, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (44, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (47, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (48, 7, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (49, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (50, 7, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (51, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (53, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (54, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (57, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (58, 7, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (56, 7, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (60, 7, false);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (31, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (32, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (34, 7, true);
insert into hrac_tim (id_clen, id_tim, zaplateny_poplatok) values (39, 7, false);

-- asistent
-- 45 a 47 nie su asistenti
-- 55 je asisentom iba jedneho U16 tim
-- 42 je asistentom v dvoch U16 timoch
-- 54 je asistentom U16 timu aj U18 timu
-- tim 3 nema asistenta
insert into asistent(id_clen, id_tim) values (53, 1);
insert into asistent(id_clen, id_tim) values (53, 2);
insert into asistent(id_clen, id_tim) values (55, 4);
insert into asistent(id_clen, id_tim) values (42, 4);
insert into asistent(id_clen, id_tim) values (42, 5);
insert into asistent(id_clen, id_tim) values (54, 5);
insert into asistent(id_clen, id_tim) values (54, 6);
insert into asistent(id_clen, id_tim) values (52, 7);
insert into asistent(id_clen, id_tim) values (51, 7);

insert into udalost_typ (popis) values ('trening');
insert into udalost_typ (popis) values ('zapas');
insert into udalost_typ (popis) values ('bowling');
insert into udalost_typ (popis) values ('escape room');

-- timy 6 a 7 sa zucastnia vsetkych 4 typov udalosti
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 6, '2021-08-20', '16:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 6, '2021-04-19', '16:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 2, '2021-06-22', '20:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 4, '2021-04-21', '15:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 3, '2021-08-15', '14:00');

insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 2, '2021-08-26', '14:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 4, '2021-05-01', '18:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (1, 4, '2021-05-04', '14:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 6, '2021-07-07', '16:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 6, '2021-08-09', '17:30');

insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 3, '2021-04-30', '16:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 3, '2021-08-04', '16:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (1, 5, '2021-07-28', '20:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 5, '2021-08-21', '19:00');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (3, 2, '2021-06-02', '17:00');

insert into udalost (id_udalost_typ, id_tim, datum, cas) values (3, 5, '2021-06-16', '19:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (3, 6, '2021-06-13', '17:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 7, '2021-07-07', '18:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 3, '2021-06-11', '19:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (1, 6, '2021-05-02', '15:30');

insert into udalost (id_udalost_typ, id_tim, datum, cas) values (2, 7, '2021-08-27', '17:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 7, '2021-04-18', '18:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (4, 1, '2021-04-02', '14:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (1, 7, '2021-08-21', '16:30');
insert into udalost (id_udalost_typ, id_tim, datum, cas) values (3, 7, '2021-04-19', '18:00');

-- v halach 4 a 5 sa nehra zapas
insert into trening (id_udalost, id_hala, zameranie) values (8, 4, 'hrací');
insert into trening (id_udalost, id_hala, zameranie) values (13, 2, 'hrací');
insert into trening (id_udalost, id_hala, zameranie) values (20, 5, 'hrací');
insert into trening (id_udalost, id_hala, zameranie) values (24, 4, 'hrací');

insert into zapas (id_udalost, id_hala, super, naklady) values (2, 1, 'Sparta', null);
insert into zapas (id_udalost, id_hala, super, naklady) values (3, 2, 'Chodov', 10000);
insert into zapas (id_udalost, id_hala, super, naklady) values (4, 1, 'Brno', 5500);
insert into zapas (id_udalost, id_hala, super, naklady) values (6, 3, 'Vitkovice', 7000);
insert into zapas (id_udalost, id_hala, super, naklady) values (9, 3, 'Tsunami Zahorska Bystrica', 14500);
insert into zapas (id_udalost, id_hala, super, naklady) values (11, 1, 'Sparta', null);
insert into zapas (id_udalost, id_hala, super, naklady) values (14, 1, 'Tatran', 11000);
insert into zapas (id_udalost, id_hala, super, naklady) values (18, 3, 'Chodov', null);
insert into zapas (id_udalost, id_hala, super, naklady) values (21, 1, 'Vitkovice', null);

