# DB 
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

# Table users
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,     # unique bedeutet keine Wiederholung
    user_pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
    
);



# Daten
INSERT INTO 
    boo.users(user_name,user_pwd,first_name,family_name) 
VALUES 
    ("max", SHA1("1234"), "Max", "Mütze"),
    ("maxine", SHA1("7xt0"), "Maxine", "Mützerich"),
    ("maxl", SHA1("useer1234"), "Max", "Mützerich")
;

# Inhalte : Ergebnistabelle 
SELECT * FROM boo.users;

# Änderungen an bestehender Tabelle 
ALTER TABLE # alter = ändern
    boo.users
ADD
    user_plz INT(5) NOT NULL DEFAULT 00000
;


# Struktur
DESCRIBE boo.users;

# update von Daten
UPDATE boo.users SET user_plz = 70367 WHERE first_name = "Max";
UPDATE boo.users SET user_plz = 70462 WHERE id = 2;

# Inhalte : Ergebnistabelle 
SELECT * FROM boo.users;





