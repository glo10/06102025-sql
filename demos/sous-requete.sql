-- Récupérez des produits et leurs catégories
-- un conditionnement en pots avec une sous-requête
-- On veut récupérer une liste des identifiants des produits ayant
-- le conditionnement en pot dans la sous-requête

SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT, P.QUANTITE
FROM categories C
JOIN produits P ON C.CODE_CATEGORIE = P.CODE_CATEGORIE
WHERE P.REF_PRODUIT IN (
SELECT A.REF_PRODUIT
FROM produits A
WHERE A.QUANTITE LIKE '%pot%'
);
