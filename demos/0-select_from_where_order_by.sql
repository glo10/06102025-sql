--- Question : Tous les produits avec leurs noms, ref et quantités
SELECT NOM_PRODUIT, REF_PRODUIT, QUANTITE
FROM produits;

--- Question : Tous les clients avec leurs societés, pays et ville
--- En bonus : le téléphone et le faxe en plus
--- Certaines bases de données sont sensibles à la casse (majuscule(MAJ) et minuscule(MIN)) donc pour éviter d'exclure
---     éventuellement des enregistrenements qui remplissent notre condition
---     il est conseillé de transformer en MAJ ou MIN le contenu de la colonne et le comparer à une valeur
---     entièrement en MAJ ou MIN
---     en appliquant les fonctions upper() ou lower() à la colonne
SELECT *
FROM clients
WHERE LOWER(pays)="allemagne";

--- Question : tous les clients qui habitent à Berlin
SELECT *
FROM clients
WHERE LOWER(VILLE) = "berlin";
--- Q bonus : tous les clients franco-allemands (habitent soit en Allemagne ou en france)
SELECT societe, pays
FROM clients
WHERE LOWER(pays) = 'allemagne' OR UPPER(pays) = 'FRANCE'
ORDER BY pays ASC;