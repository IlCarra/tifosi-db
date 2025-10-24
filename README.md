# Tifosi DB

Ce projet SQL modélise une base de données pour un restaurant Street-Food Italien fictive appelée **Tifosi**, spécialisée dans les focaccias et les boissons. 
Il comprend la création du schéma, le peuplement avec des données de test, ainsi que des requêtes d'analyse.

## Contenu du dépôt

| Fichier              | Description |
|----------------------|-------------|
| `schema-tifosiDB.sql`| Script de création du schéma de la base de données (tables, clés primaires/étrangères) |
| `peuplementBDD.sql`  | Script d'insertion des données de test (marques, boissons, focaccias, ingrédients) |
| `requetes.sql`       | Requêtes SQL pour tester et analyser les données (jointures, agrégations, vérifications) |
| `corrections.sql`    | (Optionnel) Script de correction des données insérées |

## Outils utilisé

- **MySQL**

- ## Instructions d'exécution

1. **Créer la base de données** :
   ```sql
   CREATE DATABASE tifosi;
2. **Activer la base**
   ```sql
   USE tifosi;
   
3. **Exécuter les scripts dans cet ordre**
   - schema-tifosiBD.sql
   - peuplementBDD.sql
   - corrections.sql (si nécessaire)
   - requetes.sql
  
4. **Exemples de requêtes incluses**
   - Nombre d'ingrédients par focaccia
   - Liste des boissons avec leur marque
   - Ingrédients spécifiques d'une focaccia
   - Vérification des données incohérentes


**Auteur** 
Projet réalisé par Stevan dans le cadre d’un exercice SQL avec le Centre Européen de Formation (CEF)
