-- Jointure avec WHERE
-- SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT
-- FROM categories C, produits P
-- WHERE C.CODE_CATEGORIE = P.CODE_CATEGORIE;

-- Jointure avec JOIN ON
-- SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT
-- FROM categories C
-- JOIN produits P ON C.CODE_CATEGORIE = P.CODE_CATEGORIE;

-- Jointure avec NATURAL JOIN
-- SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT
-- FROM categories C
-- NATURAL JOIN produits P;

-- Jointure avec JOIN USING
SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT
FROM categories C
JOIN produits P USING(CODE_CATEGORIE);

-- Jointure avec RIGHT JOIN
-- Pour avoir un contexte utile d'une jointure à gauche ou à droite
-- Ajoutez au préalable une ou 2 nouvelles catégorie à l'aide de la commande suivante
INSERT INTO categories(CODE_CATEGORIE, NOM_CATEGORIE, DESCRIPTION) VALUES
(11, 'cat11', 'desc11'),
(12, 'cat10', 'desc12');
SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT, P.QUANTITE, P.UNITES_STOCK
FROM produits P
RIGHT JOIN categories C ON C.CODE_CATEGORIE = P.CODE_CATEGORIE;

--- Jointure avec LEFT JOIN
-- Au préalable avoir les nouvelles catégories cf. LEFT JOIN ci-dessus
SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT, P.QUANTITE, P.UNITES_STOCK
FROM categories C
LEFT JOIN produits P ON C.CODE_CATEGORIE = P.CODE_CATEGORIE;