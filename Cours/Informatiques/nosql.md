# NoSQL

Le SQL n’ont pas été créés pour manipuler autant de données ; log.
C'est "no only"
0.paragdime 2: flexibilité, distribué(quantiter calcule)
0bis.   langage 2: suport aps que le sql
1.orienté colonne 124 ; optimome de lectur et recupe, redui quantité de colonne, pas de modif si rajout de categorie
2.shéma : 2 ; 
3.sql : 3 ;
4.avantage : 2 ; tabulair non obligé (acid sql)
5.sql préfeé : 1 ; complex (temps-rel=clef-valeur, relation-vivant=graphe)
6.2
7.1
8.2 scalabilité horisontal utilize plusieur /vertical haugment la capacité
9.2
10.1


il est tres flexible, il permet de metre de tout dans le meme fichier
mais on le presenteras souvent sous forme de relationnel pour la compréantion

- [NoSQL](#nosql)
  - [Introduction](#introduction)
    - [Interet](#interet)
    - [Difference](#difference)
    - [Caracterisation](#caracterisation)
    - [Type](#type)
  - [Annexe](#annexe)

Le stockage et l'analyse d'ensembles de données volumineux ou complexes, dépassant la capacité de traitement des systèmes de bases de données
traditionnel.

## Introduction

### Interet

Les raisons pour lesquelles les bases de données NoSQL sont souvent préférées dans le contexte des applications web à grande échelle. Voici quelques-unes de ces raisons :

- **Évolutivité horizontale** (scaling-out) : Les bases de données NoSQL sont conçues pour pouvoir être ***distribuées sur de multiples serveurs***, ce qui permet une croissance linéaire de la ***capacité de stockage et de traitement***. Cela les rend idéales pour les applications web qui doivent ***gérer un grand volume de données*** et une charge de requêtes élevée.
- **Flexibilité** du schéma : Les bases de données NoSQL permettent souvent une modélisation de données flexible, ***sans nécessiter de schéma rigide pré-défini***. Cela facilite l'adaptation aux besoins changeants des applications web, où les structures de ***données peuvent évoluer rapidement***.
- **Performance** en lecture et écriture : Les bases de données NoSQL sont optimisées pour des opérations de lecture/écriture rapides sur de gros volumes de données. Cela les rend adaptées aux applications web qui nécessitent des temps de réponse courts pour servir un grand nombre d'utilisateurs simultanément.
- Gestion de données **semi-structurées ou non structurées** : De nombreuses applications web génèrent des données semi-structurées ou non structurées (comme les flux de données en provenance des médias sociaux, les journaux d'événements, etc.). Les bases de données NoSQL sont souvent mieux adaptées pour gérer ces types de données que les bases de données relationnelles traditionnelles.
- **Écosystème et intégration** avec les technologies modernes : Les bases de données NoSQL font partie d'un écosystème de technologies modernes qui ***inclut des frameworks*** de développement web, des outils d'analyse de données en temps réel, etc. Leur intégration avec ces technologies permet aux développeurs de construire des applications web évolutives et ***réactives***.

### Difference

les différences entre les bases de données NoSQL et les bases de données relationnelles traditionnelles, en reprenant certains points mentionnés précédemment :

||SQL|NoSQL|
|-|-|-|
**Modèle** de données|Utilisent un modèle de ***données tabulaire*** basé sur des tables reliées par des clés étrangères.|Utilisent divers modèles de données offrant une plus grande ***flexibilité de modélisation***.|
**Schéma**|Requiert un schéma ***rigide et pré-défini***, spécifiant la structure des données à l'avance.|Peuvent être ***sans schéma*** ou schéma-flexible, permettant l'ajout de nouveaux champs sans altérer le schéma existant.|
**Scalabilité**|Souvent ***limitées*** en termes d'évolutivité, principalement en évolutivité ***verticale*** (augmentation de capacité sur un serveur existant).|Conçues pour ***aussi*** une évolutivité ***horizontale*** (augmentation du nombre de serveurs), pour ***gérer une charge croissante***.|
**Transactions ACID**|Prise en charge des transactions ACID (Atomicité, Cohérence, Isolation, Durabilité) garantissant la ***fiabilité*** des opérations.|Certaines bases de données NoSQL ne prennent pas en charge toutes les propriétés ACID, privilégiant souvent la ***disponibilité*** et la tolérance aux partitions (théorème CAP).|
**Utilisation**|Idéales pour les applications nécessitant des transactions complexes et une ***forte cohérence*** des données.|Souvent utilisées pour les applications web à grande échelle, les applications nécessitant une flexibilité de modélisation des données, ainsi que pour le traitement de ***données massives et non structurées***.|

### Caracterisation

Ces 6V fournissent un cadre pour évaluer les capacités des bases de données NoSQL et comprendre comment elles peuvent être utilisées pour répondre aux besoins des applications modernes en termes de gestion de données à grande échelle.

- **Volume** : Capacité de stockage et de traitement des grandes quantités de données. Les bases de données NoSQL sont conçues pour gérer des volumes massifs de données, ce qui les rend adaptées aux applications nécessitant le stockage et l'analyse de données à grande échelle.
- **Vitesse** : Capacité de traitement des opérations de lecture/écriture rapidement sur de gros volumes de données. Les bases de données NoSQL sont optimisées pour offrir des performances élevées, ce qui permet de répondre aux besoins des applications nécessitant un accès rapide aux données.
- **Variété** : Diversité des types de données que les bases de données peuvent stocker et gérer. Les bases de données NoSQL prennent en charge différents modèles de données, ce qui permet de gérer des données structurées, semi-structurées et non structurées.
- **Véracité** : Qualité et à l'exactitude des données stockées dans la base de données. Bien que ce ne soit pas une caractéristique spécifique des bases de données NoSQL, il est important de s'assurer que les données stockées sont fiables et précises, quel que soit le type de base de données utilisé.
- **Valeur** : Capacité d'extraire des informations précieuses à partir des données stockées dans la base de données. Les bases de données NoSQL offrent des fonctionnalités avancées d'analyse de données et de requêtes, ce qui permet aux organisations d'extraire des informations précieuses pour prendre des décisions éclairées.
- **Vérifiabilité** : Capacité de vérifier et de valider les données stockées dans la base de données. Les bases de données NoSQL offrent souvent des mécanismes de validation des données et de contrôle d'intégrité pour garantir que les données stockées sont exactes et cohérentes.

### Type

||Document|Clés-valeurs|Graph|Colone|
|-|-|-|-|-|
|Deffinition|Les documents peuvent être imbriqués et avoir une ***structure flexible***.|Permettent un accès ***rapide*** aux données grâce à la clé.|Idéales pour ***modéliser des réseaux complexes*** de données et leurs interrelations. Offrent des performances élevées pour les requêtes qui impliquent des relations.| Idéales pour les cas d'utilisation nécessitant des agrégations rapides sur de grandes quantités de données. Permettent une évolutivité horizontale efficace.|
|Forme|JSON, BSON, XML, etc.|objets simples sans structure complexe|Stockent les données sous forme de nœuds (entités) et de relations entre ces nœuds. |Stockent les données dans des colonnes plutôt que dans des lignes.|
|Exemples|MongoDB, Couchbase|Redis, Amazon DynamoDB.|Neo4j, Amazon Neptune.|Apache Cassandra, HBase.|

## Annexe

https://mongoplayground.net/
