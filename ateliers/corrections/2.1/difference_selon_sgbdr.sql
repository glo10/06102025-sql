--- 3. Affichez les noms, prénoms et date de naissance, et leur commission  (afficher 0 si pas de commission) des employés de la société.

-- Dans toutes les bases de données :
select nom,
       prenom,
       date_naissance,
       coalesce(
          commission,
          0
       )
  from employes;

-- ORACLE :
select nom,
       prenom,
       date_naissance,
       nvl(
          commission,
          0
       )
  from employes;

-- SQL Server :
select nom,
       prenom,
       date_naissance,
       isnull(
          commission,
          0
       )
  from employes;

-- MySQL:
select nom,
       prenom,
       date_naissance,
       ifnull(
          commission,
          0
       )
  from employes;

--- 8. Affichez le nom, le prénom, l’âge et l’ancienneté des employés, dans la société.
-- ORACLE :
select nom,
       prenom,
       floor((sysdate - date_naissance) / 365.25) as age,
       floor((sysdate - date_embauche) / 365.25) as ancienneté
  from employes;
-- POSTGRE :
select nom,
       prenom,
       floor((current_date - date_naissance) / 365) as age,
       floor((current_date - date_embauche) / 365) as ancienneté
  from employes;
-- MYSQL :
select nom,
       prenom,
       datediff(
          current_date,
          date_naissance
       ) / 365.25 as "AGE",
       datediff(
          current_date,
          date_embauche
       ) / 365.25 as "ANCIENNETE"
  from employes;	
-- SQL Server :	
select nom,
       prenom,
       datediff(
          day,
          date_naissance,
          getdate()
       ) / 365.25 as "AGE",
       datediff(
          day,
          date_embauche,
          getdate()
       ) / 365.25 as "ANCIENNETE"
  from employes;