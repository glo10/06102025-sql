
-- 4. Écrivez la requête qui permet d’afficher le nom des employés qui ont effectué au moins une vente pour un client parisien.
SELECT e.NOM, cl.SOCIETE, cl.VILLE
FROM employes e, commandes cmd, clients cl
WHERE e.NO_EMPLOYE=cmd.NO_EMPLOYE
AND cmd.CODE_CLIENT=cl.CODE_CLIENT
AND VILLE='Paris';

-- 5. Affichez le nom des produits et le nom des fournisseurs pour les produits des catégories 1,4 et 7.
SELECT  NOM_PRODUIT,
        SOCIETE
FROM produits p, fournisseurs f 
WHERE p.NO_FOURNISSEUR=f.NO_FOURNISSEUR
AND CODE_CATEGORIE IN (1,4,7);

-- 6. Affichez le nom des employés ainsi que le nom de leur supérieur hiérarchique.
SELECT s.NOM as nom_salarie,
s.PRENOM as salarie_prenom,
s.REND_COMPTE numero_du_chef,
s.NO_EMPLOYE as numero_employe_salarie,
chef.NOM nom_du_chef,
chef.PRENOM prenom_du_chef
FROM employes s, employes chef
WHERE chef.no_employe = s.REND_COMPTE;

--- 6. Avec Jointure
SELECT s.NOM as nom_salarie,
s.PRENOM as salarie_prenom,
s.REND_COMPTE numero_du_chef,
s.NO_EMPLOYE as numero_employe_salarie,
chef.NOM nom_du_chef,
chef.PRENOM prenom_du_chef
FROM employes s
JOIN employes chef
ON chef.no_employe = s.REND_COMPTE;