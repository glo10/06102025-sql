# Installations avec Docker

## Installations et démarrage

Uniquement si vous souhaitiez travailler avec les conteneurs, pas besoin de connaitre Docker, les commandes à exécuter et les fichiers vont seront communiqués à temps.

PS : il y a plus de conteneur que nécessaire afin de satisfaire tout le monde.
En réalité, vous avez besoin d'un conteneur pour le SGBDR de votre choix et une interface graphique. Donc concrètement que 2 conteneurs parmi les 9 existants, un pour le SGBDR de votre choix et l'autre pour l'interface graphique associé.

- [Téléchargez Docker](https://www.docker.com/products/docker-desktop/)
- [Récupérez le fichier compose.yaml](./compose.dev.yaml)
- [Récupérez le fichier .env à modifier avec vos informations pour les connexions aux bases de données (à placer au même niveau que compose.dev.yaml)](../../.env)
- [Récupérez les fichiers dans le dossier /cmd](../../cmd)
- Exécutez la commande suivante pour créer des instances des SGBDR et les outils graphiques en ayant le même arborescence que moi pour le dossier */cmd/* au même niveau que le fichier *compose.dev.yaml*
```bash
./cmd/up.sh
```
---

## Manipulations des conteneurs

- **Pour rentrer dans le conteneur via le bash**
```bash
./cmd/it.sh nameOrID
# pour obtenir l'ID ou le nom du conteneur, exécutez la commande docker container ls
```

- **Pour arreter tous vos conteneurs**, exécutez 

```bash
./cmd/stop.sh [id ou nom du conteneur optionnelle]
# si présence de l'id ou du nom, seul ce container sera arrêté sinon tous les conteneurs seront arrêtés
```
- **Pour reconstruire/redemarrer vos conteneurs**, exécutez 

```bash
./cmd/up.sh
```

- **Pour détruire vos conteneurs depuis la racine ou se trouve compose.dev.yaml** : 

```bash
./cmd/down.sh
```

## Les autres commandes Docker

```bash
# voir la liste de tous les conteneurs démarrés
docker container ls
# pour voir la liste de tous les conteneurs
docker container ls -a 
# stopper un container
docker stop id_container 
# lancer un conteneur à partir de son ID
docker start id_container
```

## Utilisation du client adminer

[Suivez ce guide](../adminer.md)

## Export des données

- Pour exporter vos bases de données, vous pouvez le faire en vous connectant depuis ***adminer*** ou depuis les conteneurs via les commandes *mysqldump, pgdump, etc* en fonction de votre *SGBDR*