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

# Tabelle anzeigen, falls noch nicht vorhanden
CREATE TABLE IF NOT EXISTS boo.test
(
	name VARCHAR(20),
	age INT 



);

# alle Tabellen in der DB anzeigen
SHOW TABLES;

# Struktur der Tabelle anzeigen
DESCRIBE boo.test;

# Datenbanken
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test VALUES ();

# Inhalte der Tabelle anzeigen 
SELECT * FROM boo.test;