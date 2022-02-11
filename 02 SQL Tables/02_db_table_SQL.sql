/* kommentar */
# kommentar

/* Strukturen */
/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

DROP DATABASE IF EXISTS boo;



# DB boo anlegen, falls noch nicht vorhanden
CREATE DATABASE IF NOT EXISTS boo;

# DB auswählen
USE boo;

# Tabelle anzeigen, falls noch nicht vorhanden
CREATE TABLE IF NOT EXISTS test
(
	name VARCHAR(20),
	age INT 



);

# alle Tabellen in der DB anzeigen
SHOW TABLES;

# Struktur der Tabelle anzeigen
DESCRIBE test