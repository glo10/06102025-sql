-- PS : dans les exemples suivants, il n'y a pas une necessité
--  de passer par une sous-requête, c'est à titre pédagogique
-- Récupérez des produits et leurs catégories
-- un conditionnement en pots avec une sous-requête
-- On veut récupérer une liste des identifiants des produits ayant
-- le conditionnement en pot dans la sous-requête

-- Ici avec WHERE
SELECT C.NOM_CATEGORIE, P.NOM_PRODUIT, P.QUANTITE
FROM categories C
JOIN produits P ON C.CODE_CATEGORIE = P.CODE_CATEGORIE
WHERE P.REF_PRODUIT IN (
SELECT A.REF_PRODUIT
FROM produits A
WHERE A.QUANTITE LIKE '%pot%'
);
-- Ici avec FROM
-- Récupérez des produits et leurs catégories
-- un conditionnement en pots avec une sous-requête
-- On veut récupérer une liste des identifiants des produits ayant
-- le conditionnement en pot dans la sous-requête

SELECT DISTINCT P.NOM_PRODUIT, P.QUANTITE, t.CODE_CATEGORIE
FROM (
  SELECT CODE_CATEGORIE
  FROM produits
) t
JOIN produits P ON t.CODE_CATEGORIE = P.CODE_CATEGORIE
WHERE P.QUANTITE LIKE '%pot%';

-- Possible de faire les sous-requêtes dans le SELECT, JOIN également

