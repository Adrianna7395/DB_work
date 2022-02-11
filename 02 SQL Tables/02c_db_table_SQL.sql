/* kommentar */
# kommentar

/* Strukturen */
/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

DROP DATABASE IF EXISTS boo;



# DB boo anlegen, falls noch nicht vorhanden
CREATE DATABASE IF NOT EXISTS boo;

# DB auswählen
#USE boo;

# DB boo löschen, falls vorhanden
#DROP TABLE IF EXISTS boo.test;

# Tabelle anzeigen, falls noch nicht vorhanden
CREATE TABLE IF NOT EXISTS boo.test
(
    id INT NOT NULL UNIQUE,
	name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0



);

# alle Tabellen in der DB anzeigen
SHOW TABLES;

# Struktur der Tabelle anzeigen
DESCRIBE boo.test;

# Datenbanken
INSERT INTO boo.test(id,name,age) VALUES (1,"Grizabella",29);
INSERT INTO boo.test(id,name,age) VALUES (2,"Alonzo",35);
INSERT INTO boo.test(id,name,age) VALUES (3,"Alonzo",31);
INSERT INTO boo.test(id,name,age) VALUES (4,"Alonzo",25);

# Doppelte Daten werden zugelassen
#INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");

# Inhalte der Tabelle anzeigen 
SELECT * FROM boo.test;