# Exercice 1 : interrogez la base de données de la RATP avec des requêtes simples

## Documentation

- [Documentation SQL.sh SELECT](https://sql.sh/cours/select)
- [Documentation W3SCHOOLS SELECT](https://www.w3schools.com/sql/sql_select.asp)
- [Documentation spécifique à SQLite SELECT](https://www.sqlite.org/lang_select.html)

---

## Énoncé

1. Récupérez la base donnée [trafic annuel entrant par station du réseau ferré RATP de 2013 à 2021 au format SQL](../databases/ratp_mysql.sql) ou [SQLite (si vous souhaitiez travailler avec SQLITE)](../databases/ratp.sqlite)
2. Agence de location *Drive Rental* située à Paris souhaite avoir les informations suivantes en s'appuyant sur votre expertise dans les bases de données pour sa filiale d'auto-partage *Drive Share* qui met à disposition des véhicules pour le covoiturage à proximité des gares de la région parisienne.
Pour chaque demande, vous devez rédiger et stocker la requête SQL et prendre une capture d'écran du résultat retourné par votre base de données.

---

### Les questions du client Drive Rental qui concerne uniquement le trafic pour l'année 2021

1. Toutes les villes différentes de Paris qui dispose d'un station de Métro ou RER.
2. Les stations qui ont une fréquentation entre *5 000 000* et *10 000 000* de passager annuel.
3. Quel est le nombre total du trafic annuel de toutes les stations ?
4. Le nombre total des stations par Arrondissement de Paris dans l'ordre décroissant (du plus grand au plus pétit) ?
5. Quel est le nombre total des stations de Métro ?
6. Quel est le nombre total des stations de RER ?
7. Tous les noms des stations des villes suivantes :  Bobigny, La courneuve, Saint Denis, Pantin, Montreuil et Bagnolet trié par le nom de la ville croissante (de A à Z)
8. Toutes les informations concernant les stations de la ville de Vincennes.
9. Toutes les stations qui commencent par "porte" triées par ordre décroissant (de Z à A).
10. Les stations qui ont une correspondance avec le RER B qui mène vers les aéroports.
11. Toutes les informations concernant la ville de Meudon-la-forêt.