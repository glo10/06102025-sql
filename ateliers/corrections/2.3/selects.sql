--- 1. nom et prénom des employés triés par nom DESC
SELECT lastname,
firstname
FROM EMPLOYEE
ORDER BY lastname DESC;

--- 2. société et ville des clients triés par pays ASC
--- ASC(croissant) est le tri par défaut sur le champ après ORDER BY, vous n'êtes pas obligé de l'écrire
SELECT society,
city
FROM CUSTOMER
ORDER BY country;

--- 3. société, pays, ville des clients triés par pays et ville
SELECT society,
country,
city
FROM CUSTOMER
ORDER BY country, city;

--- 4. nom et commission des employés triés par commission
SELECT lastname,
commission
FROM EMPLOYEE
ORDER BY commission;