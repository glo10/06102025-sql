--- AVEC PostegreSQL
--- 1. Tous les employés de la société
SELECT *
FROM EMPLOYEE;
--- 2. Noms des catégories
SELECT category_name
FROM CATEGORY; 
--- 3. nom, prénom, date de naissance et commision (afficher 0 si pas de commission) des employés
SELECT 
  lastname,
  firstname,
  birth,
  CASE commission THEN commission ELSE 0
FROM EMPLOYEE;
--- 4. Liste des fonctions des employés
SELECT DISTINCT job
FROM EMPLOYEE;
--- 5. Liste de tous les pays de la clientèle
SELECT DISTINCT country
FROM CUSTOMER;
--- 6. Toutes les villes qui ont au moins 1 client
SELECT DISTINCT city
FROM CUSTOMER;

--- 7. Produits commercialisés et valeur de stock par produit (pu*qté en stock)
SELECT product_name, (unit_price * in_stock)::DECIMAL(2) AS stock_value
FROM PRODUCT;

--- 8. nom, prenom, age, ancienneté employés
SELECT lastname,
firstname,
DATE_PART('YEAR', AGE(CURRENT_DATE, birth)) AS age,
EXTRACT('YEAR' FROM AGE(CURRENT_DATE, start_date)) AS senoirity
FROM EMPLOYEE;

--- 9. Requête qui affiche Employé    a un    gain annuel   sur 12 mois
SELECT lastname || ' ' || firstname AS "Employé",
'gagne' AS 'a un',
(salary*12) AS 'salaire*12',
'par an' AS 'sur 12 mois'
LIMIT 9; 
