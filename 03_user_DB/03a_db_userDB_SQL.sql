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

# Struktur
DESCRIBE boo.users;

# Daten
INSERT INTO 
    boo.users(user_name,user_pwd,first_name,family_name) 
VALUES  
        ("max", "1234", "Max", "Mütze"),
        ("maxine", "7xt0", "Maxine", "Mützerich"),
        ("maxl", "useer1234", "Max", "Mützerich")
;
# Inhalte : Ergebnistabelle 
SELECT * FROM boo.users;











