-- Remove conflicting tables
DROP TABLE IF EXISTS adresa CASCADE;
DROP TABLE IF EXISTS clen CASCADE;
DROP TABLE IF EXISTS hala CASCADE;
DROP TABLE IF EXISTS hrac CASCADE;
DROP TABLE IF EXISTS hrac_tim CASCADE;
DROP TABLE IF EXISTS kategoria CASCADE;
DROP TABLE IF EXISTS tim CASCADE;
DROP TABLE IF EXISTS trener CASCADE;
DROP TABLE IF EXISTS trening CASCADE;
DROP TABLE IF EXISTS udalost CASCADE;
DROP TABLE IF EXISTS udalost_typ CASCADE;
DROP TABLE IF EXISTS zapas CASCADE;
DROP TABLE IF EXISTS asistent CASCADE;
-- End of removing

CREATE TABLE adresa (
    id_adresa SERIAL NOT NULL,
    ulica VARCHAR(50) NOT NULL,
    cislo INTEGER NOT NULL,
    psc INTEGER NOT NULL,
    mesto VARCHAR(50) NOT NULL
);
ALTER TABLE adresa ADD CONSTRAINT pk_adresa PRIMARY KEY (id_adresa);

CREATE TABLE hala (
    id_hala SERIAL NOT NULL,
    id_adresa INTEGER NOT NULL,
    nazov_hala VARCHAR(50) NOT NULL,
    pocet_divakov INTEGER NOT NULL,
    pocet_satni INTEGER NOT NULL,
    bufet BOOLEAN
);
ALTER TABLE hala ADD CONSTRAINT pk_hala PRIMARY KEY (id_hala);
ALTER TABLE hala ADD CONSTRAINT uc_hala_nazov UNIQUE (nazov_hala);
ALTER TABLE hala ADD CONSTRAINT u_fk_hala_adresa UNIQUE (id_adresa);

CREATE TABLE clen (
    id_clen SERIAL NOT NULL,
    id_adresa INTEGER NOT NULL,
    email VARCHAR(50) NOT NULL,
    meno VARCHAR(50) NOT NULL,
    priezvisko VARCHAR(50) NOT NULL,
    datum_narodenia DATE NOT NULL,
    telefon VARCHAR(50)
);
ALTER TABLE clen ADD CONSTRAINT pk_clen PRIMARY KEY (id_clen);
ALTER TABLE clen ADD CONSTRAINT uc_clen_email UNIQUE (email);

CREATE TABLE trener (
    id_clen INTEGER NOT NULL,
    licencia VARCHAR(5) NOT NULL,
    cislo_uctu VARCHAR(50) NOT NULL,
    plat INTEGER NOT NULL
);
ALTER TABLE trener ADD CONSTRAINT pk_trener PRIMARY KEY (id_clen);
ALTER TABLE trener ADD CONSTRAINT uc_trener_cislo_uctu UNIQUE (cislo_uctu);

CREATE TABLE asistent (
    id_clen INTEGER NOT NULL,
    id_tim INTEGER NOT NULL
);
ALTER TABLE asistent ADD CONSTRAINT pk_trener_tim PRIMARY KEY (id_clen, id_tim);

CREATE TABLE hrac (
    id_clen INTEGER NOT NULL,
    post VARCHAR(50)
);
ALTER TABLE hrac ADD CONSTRAINT pk_hrac PRIMARY KEY (id_clen);

CREATE TABLE hrac_tim (
    id_clen INTEGER NOT NULL,
    id_tim INTEGER NOT NULL,
    zaplateny_poplatok BOOLEAN NOT NULL
);
ALTER TABLE hrac_tim ADD CONSTRAINT pk_hrac_tim PRIMARY KEY (id_clen, id_tim);

CREATE TABLE tim (
    id_tim SERIAL NOT NULL,
    id_kategoria INTEGER NOT NULL,
    id_hlavny_trener INTEGER,
    nazov_tim VARCHAR(50) NOT NULL
);
ALTER TABLE tim ADD CONSTRAINT pk_tim PRIMARY KEY (id_tim);
ALTER TABLE tim ADD CONSTRAINT uc_tim_nazov UNIQUE (nazov_tim);
ALTER TABLE tim ADD CONSTRAINT u_fk_tim_trener UNIQUE (id_hlavny_trener);

CREATE TABLE kategoria (
    id_kategoria SERIAL NOT NULL,
    nazov_kategoria VARCHAR(10) NOT NULL,
    min_rok_narodenia INTEGER NOT NULL,
    max_rok_narodenia INTEGER NOT NULL
);
ALTER TABLE kategoria ADD CONSTRAINT pk_kategoria PRIMARY KEY (id_kategoria);
ALTER TABLE kategoria ADD CONSTRAINT uc_kategoria_nazov UNIQUE (nazov_kategoria);

CREATE TABLE udalost (
    id_udalost SERIAL NOT NULL,
    id_udalost_typ INTEGER NOT NULL,
    id_tim INTEGER NOT NULL,
    datum DATE NOT NULL,
    cas TIME NOT NULL
);
ALTER TABLE udalost ADD CONSTRAINT pk_udalost PRIMARY KEY (id_udalost);

CREATE TABLE udalost_typ (
    id_udalost_typ SERIAL NOT NULL,
    popis VARCHAR(50) NOT NULL
);
ALTER TABLE udalost_typ ADD CONSTRAINT pk_udalost_typ PRIMARY KEY (id_udalost_typ);

CREATE TABLE trening (
    id_udalost INTEGER NOT NULL,
    id_hala INTEGER NOT NULL,
    zameranie VARCHAR(50) NOT NULL
);
ALTER TABLE trening ADD CONSTRAINT pk_trening PRIMARY KEY (id_udalost);

CREATE TABLE zapas (
    id_udalost INTEGER NOT NULL,
    id_hala INTEGER NOT NULL,
    super VARCHAR(50) NOT NULL,
    naklady INTEGER
);
ALTER TABLE zapas ADD CONSTRAINT pk_zapas PRIMARY KEY (id_udalost);

ALTER TABLE clen ADD CONSTRAINT fk_clen_adresa FOREIGN KEY (id_adresa) REFERENCES adresa (id_adresa) ON DELETE CASCADE;

ALTER TABLE hala ADD CONSTRAINT fk_hala_adresa FOREIGN KEY (id_adresa) REFERENCES adresa (id_adresa) ON DELETE CASCADE;

ALTER TABLE hrac ADD CONSTRAINT fk_hrac_clen FOREIGN KEY (id_clen) REFERENCES clen (id_clen) ON DELETE CASCADE;

ALTER TABLE hrac_tim ADD CONSTRAINT fk_hrac_tim_hrac FOREIGN KEY (id_clen) REFERENCES hrac (id_clen) ON DELETE CASCADE;
ALTER TABLE hrac_tim ADD CONSTRAINT fk_hrac_tim_tim FOREIGN KEY (id_tim) REFERENCES tim (id_tim) ON DELETE CASCADE;

ALTER TABLE tim ADD CONSTRAINT fk_tim_kategoria FOREIGN KEY (id_kategoria) REFERENCES kategoria (id_kategoria) ON DELETE CASCADE;
ALTER TABLE tim ADD CONSTRAINT fk_tim_trener FOREIGN KEY (id_hlavny_trener) REFERENCES trener (id_clen) ON DELETE CASCADE;

ALTER TABLE trener ADD CONSTRAINT fk_trener_clen FOREIGN KEY (id_clen) REFERENCES clen (id_clen) ON DELETE CASCADE;

ALTER TABLE trening ADD CONSTRAINT fk_trening_udalost FOREIGN KEY (id_udalost) REFERENCES udalost (id_udalost) ON DELETE CASCADE;
ALTER TABLE trening ADD CONSTRAINT fk_trening_hala FOREIGN KEY (id_hala) REFERENCES hala (id_hala) ON DELETE CASCADE;

ALTER TABLE udalost ADD CONSTRAINT fk_udalost_udalost_typ FOREIGN KEY (id_udalost_typ) REFERENCES udalost_typ (id_udalost_typ) ON DELETE CASCADE;
ALTER TABLE udalost ADD CONSTRAINT fk_udalost_tim FOREIGN KEY (id_tim) REFERENCES tim (id_tim) ON DELETE CASCADE;

ALTER TABLE zapas ADD CONSTRAINT fk_zapas_udalost FOREIGN KEY (id_udalost) REFERENCES udalost (id_udalost) ON DELETE CASCADE;
ALTER TABLE zapas ADD CONSTRAINT fk_zapas_hala FOREIGN KEY (id_hala) REFERENCES hala (id_hala) ON DELETE CASCADE;

ALTER TABLE asistent ADD CONSTRAINT fk_trener_tim_trener FOREIGN KEY (id_clen) REFERENCES trener (id_clen) ON DELETE CASCADE;
ALTER TABLE asistent ADD CONSTRAINT fk_trener_tim_tim FOREIGN KEY (id_tim) REFERENCES tim (id_tim) ON DELETE CASCADE;

ALTER TABLE trener ADD CONSTRAINT valid_salary CHECK ( plat >= 0 );
ALTER TABLE hala ADD CONSTRAINT valid_cap CHECK ( pocet_divakov > 0 );
ALTER TABLE hala ADD CONSTRAINT valid_room CHECK ( pocet_satni > 0 );
