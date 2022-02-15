SELECT
    ticker AS "SYM",
    price AS "Kurs in $",
    c_name AS "Unternehmen",
   payouts AS "Zahlung p.a.",
   dividend AS "Dividende",
   CONCAT(sector, " | ", industry) AS "Operations"
FROM stocks.ccc
#WHERE sector = "Communication Services" AND (industry = "Entertainment" OR industry = "Media")
WHERE sector = "Communication Services" AND NOT industry = "Media"
#WHERE industry = "Media" 
#WHERE payouts = 12 - Wer zahlt monatlich?
ORDER BY price DESC 
LIMIT 40
;