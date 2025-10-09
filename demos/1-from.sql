--- Tous les employés de la société
SELECT *
FROM employes;

--- nom de categories produits
SELECT nom_categorie
FROM categories;

--- nom,prenom, date de naissance et commission
SELECT nom, prenom, coalesce(commission, 0) AS commission
FROM employes;

--- liste des fonctions
SELECT DISTINCT fonction
FROM employes;

--- liste des pays 
SELECT pays
FROM clients;

--- 6. localité ou il existe au moins un client
SELECT ville
FROM clients;
--- 7. produits commercialisés et
SELECT nom_produit, prix_unitaire*unites_stock as valeur_stock
FROM produits;

--- 8. nom, prénom age et ancienneté
SELECT nom, prenom, TIMESTAMPDIFF(YEAR, current_date, date_naissance) as age
FROM employes;