-- Avoir les fournisseurs qui nous délivrent au moins 4 produits
SELECT F.SOCIETE AS fournisseur, COUNT(P.REF_PRODUIT) as total_produits
FROM produits P
JOIN fournisseurs F
ON P.NO_FOURNISSEUR = F.NO_FOURNISSEUR
GROUP BY fournisseur
HAVING COUNT(P.REF_PRODUIT) >= 4
ORDER BY total_produits DESC, fournisseur;
