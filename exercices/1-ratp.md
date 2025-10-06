# Exercice 1 : interrogez la base de données de la RATP avec des requêtes simples

## Documentation

- [Documentation SQL.sh SELECT](https://sql.sh/cours/select)
- [Documentation W3SCHOOLS SELECT](https://www.w3schools.com/sql/sql_select.asp)
- [Documentation spécifique à SQLite SELECT](https://www.sqlite.org/lang_select.html)
- [Documentation SQL.sh SELECT](https://sql.sh/cours/select)
- [Documentation W3SCHOOLS SELECT](https://www.w3schools.com/sql/sql_select.asp)
- [Documentation SQL.sh JOINTURE](https://sql.sh/cours/jointures)
- [Documentation W3SCHOOLS JOINTURE](https://www.w3schools.com/sql/sql_join.asp)

---

Agence de location *Drive Rental* située à Paris souhaite avoir les informations suivantes en s'appuyant sur votre expertise dans les bases de données pour sa filiale d'auto-partage *Drive Share* qui met à disposition des véhicules pour le covoiturage à proximité des gares de la région parisienne.
Pour chaque demande, vous devez rédiger et stocker la requête SQL et prendre une capture d'écran du résultat retourné par votre base de données.

---

## PARTIE I

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

---

## PARTIE II

*Drive share* vous sollicite à nouveau pour compléter leur étude du réseau de la RATP.

1. Quelle est la station qui comptabilise le moins de trafic ?
2. Quelle est la station qui comptabilise le plus de trafic ?
3. La moyenne de la fréquentation des stations dans le *13 ème arrondissement* de *Paris*.
4. Les stations qui ont le mot *"mairie"* ou *"ville"* dans leur nom.
5. Toutes les stations qui ont un arrondissement paire.
6. Les 5 stations de la ligne 1 les plus frequentées.
7. Toutes les stations de la ligne 14 affichées sur la même ligne (résultat attendu *"olympiades, saint-lazare, marie de saint-ouen, pont cardinet,..."*).
8. L'arrondissement de Paris qui comptabilise le plus de station.
9. Toutes les villes qui n'ont qu'une seule station.

---

## PARTIE III


Toujours dans le cadre de l'étude de marché pour *Drive Rental Paris*, vous devez envoyer aux clients les réponses aux questions suivantes.
Pour chaque réponse, vous devez stocker la requête SQL permettant de répondre à la question.

1. Les 10 stations les plus fréquentées ces 3 dernières années (de 2019 à 2021)
2. Les 5 stations les moins fréquentées dans Paris entre 2018 et 2021.
3. Les 5 stations les plus fréquentées en dehors de Paris ces 2 dernières années.
4. Les 11ème, 12ème et 13ème stations les plus fréquentées du métro parisien entre 2018 et 2020.
5. L'année qui a le plus de trafic entre 2013, 2014 et 2020.
6. Le trafic moyen dans Paris sur les 3 dernières années.
7. Le trafic moyen à Saint-Lazare sur les 5 dernières années.
8. Le trafic moyen à Gare du Nord sur les 5 dernières années.
9. Le trafic moyen à Gare de Lyon sur les 5 dernières années.
10. Le trafic moyen à Gare de l'Est sur les 5 dernières années.