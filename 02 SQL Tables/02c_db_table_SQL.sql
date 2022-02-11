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
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0



);

# alle Tabellen in der DB anzeigen
SHOW TABLES;

# Struktur der Tabelle anzeigen
DESCRIBE boo.test;

# Datenbanken
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",35);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",31);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",25);
INSERT INTO boo.test(name,age) VALUES ("Maxine",25);

# Doppelte Daten werden zugelassen
#INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");

# Inhalte der Tabelle anzeigen 
SELECT * FROM boo.test;