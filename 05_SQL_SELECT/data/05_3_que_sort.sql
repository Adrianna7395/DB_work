# Queries Sortierung

-- asc/desc
#SELECT
    #ticker AS "SYM",
   # price AS "Kurs in $",
    #c_name AS "Unternehmen",
   #industry AS "Branche"
   #no_yrs AS "Jahre ++",
   #CONCAT(sector, " | ", industry) AS "Operations"
#FROM stocks.ccc
-- Sortierung
#ORDER BY ticker DESC
#ORDER BY ticker ASC
#ORDER BY price DESC
#ORDER BY no_yrs ASC
-- Begrenzung
#LIMIT 20 -- Zeilen ab 0
#;


#SELECT
   # ticker AS "SYM",
  #  c_name AS "Unternehmen",
  # industry AS "Branche"
  # FROM stocks.ccc
  -- scharfe Suche nach Strings 
  #WHERE industry = "Media"
  
 -- unschärfere Suche --
-- Branchenname beginnt mit ... , dahinter beliebige Chars
#WHERE industry LIKE "Air%"

-- Branchenname endet mit ... , davor beliebige Chars
#WHERE industry LIKE "%ment"

-- Branchenname enthaelt ...
#WHERE industry LIKE "%ood%"

-- Branchenname endet/beginnt mit ... , danach/davor/inmitten genau _ Char
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "M___a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"

#WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain%"

#  ORDER BY industry ASC 

#LIMIT 20 -- Zeilen ab 0
#;



-- Eingrenzen/Filtern WHERE & IN / NOT IN (Suchsets)


SELECT
ticker AS "SYM",
c_name AS "Unternehmen",
sector AS "Sektor",
industry AS "Branche"
FROM stocks.ccc
#WHERE sector = "Financials"
#WHERE sector = "Financials" AND industry NOT IN ("Insurance","Banks")
WHERE industry IN ("Banks","Beverages")
ORDER BY industry ASC
LIMIT 400 -- X Zeilen ab 0
;


