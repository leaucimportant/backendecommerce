<!-- TOC -->
* [backend-ecommerce](#backend-ecommerce)
* [Url de connexion](#url-de-connexion)
* [ENV](#env)
* [Initialisation de la base de donnée](#initialisation-de-la-base-de-donnée)
<!-- TOC -->

# backend-ecommerce

Ce projet constitue le coeur de l'application e-commerce de Breizhsport. Il contient l'API et la couche d'interraction
avec la base de données.

# Url de connexion
Une fois les services lancées, l'API Breizhsport sera disponible sur cette adresse `http://127.20.0.3:1080/`.

# ENV

Un fichier d'environnement `.env` devra être créé.

```dotenv
# Environnement MSQL
DATABASE_NAME=
SQL_ROOT_PASSWORD=
MYSQL_USER=
MYSQL_PASSWORD=

# Environnement Backend
DATABASE_USE_ROOT= <true | false>

# Environnement MongoDB
MGDB_ROOT_USERNAME=
MGDB_ROOT_PASSWORD=
MONGO_DATABASE_NAME=
```

# Initialisation de la base de donnée

Pour initialiser la base de donnée, la définition du champ `DATABASE_NAME` permet à l'image MYSQL de créer
automatiquement une base avec ce nom. <br>
Pour créer les tables et/ou le jeu de donnée, il faut déposer les scripts SQL dans le dossier *sql_scripts*.<br>
:warning: **Lecture des scripts**: Les scripts SQL seront exécutés (par ordre alphabétique) uniquement lors la base est
créée.