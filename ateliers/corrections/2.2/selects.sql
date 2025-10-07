--- 1. nom et société des clients habitant à Toulouse
SELECT lastname,
society
FROM CUSTOMER
WHERE UPPER(city) = 'TOULOUSE';

--- 2. nom, prénom, fonction des employés dirigés par employé id 2
SELECT lastname,
firstname,
job
FROM EMPLOYEE
WHERE report_to = 2;

--- 3. nom, prénom, fonction qui ne sont pas des représentants
SELECT lastname,
firstname,
job
FROM EMPLOYEE
WHERE job NOT LIKE '%epr_%tant%';

--- 4. nom, prénom, fonction employé salaire < 3500
SELECT lastname,
firstname,
job,
salary
FROM EMPLOYEE
WHERE salary < 3500;

--- 5. nom, ville, pays clients qui n'ont pas de fax
SELECT lastname,
city,
country
FROM CUSTOMER
WHERE fax IS NULL;

--- 6. nom, prénom, fonction qui n'ont pas de supérieur
SELECT lastname,
firstname,
job
FROM EMPLOYEE
WHERE report_to IS NULL;