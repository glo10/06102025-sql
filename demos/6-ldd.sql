-- Insertion d'une nouvelle donnée dans une table
INSERT INTO categories
(code_categorie, nom_categorie, description) 
VALUES (16, 'charcuterie', 'description charcuterie');

--

UPDATE categories
SET description= 'Droguerie description',
nom_categorie =  CURRENT_DATE
WHERE CODE_CATEGORIE = 15;
SELECT * FROM categories;

-- Modification de la description et nom de la cat 15
SELECT SALAIRE, NOM FROM employes;

UPDATE employes
SET SALAIRE=SALAIRE/1.20;

SELECT SALAIRE, NOM FROM employes;

-- -- Suppression de la description et nom de la cat 15
SELECT * FROM categories;

DELETE FROM categories WHERE CODE_CATEGORIE = 15;

SELECT * FROM categories;

CREATE TABLE transporteurs(
NO_TRANSPORTEUR INTEGER NOT NULL,
NOM VARCHAR(150) NOT NULL,
PRENOM VARCHAR(100) NOT NULL,
ADRESSE VARCHAR(100)
);
