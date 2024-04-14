# Data Time

En Python, la date et l'heure ne sont pas un type de données propre, mais le module datetime peut être importé pour travailler à la fois avec la date et l'heure.

Le module datetime est intégré à Python, donc il n'est pas nécessaire de l'installer externalement. ``from datetime import datetime``


datetime fournit des classes pour travailler avec la date et l'heure. Ces classes fournissent un certain nombre de fonctions pour traiter les dates, les heures et les intervalles de temps. La date et la date-heure sont des objets en Python, donc lorsque vous les modifiez, vous modifiez effectivement des objets et non des chaînes de caractères ou des horodatages.

- [Data Time](#data-time)
  - [Format](#format)
  - [Classes](#classes)
  - [Autres](#autres)
  - [Annex](#annex)
    - [Webographie](#webographie)


## Format

|code|valeur|
|:-:|-|
|\%d|Day of the month (number)|
|\%m|Month (number)|
|\%b|Month (abbreviated)|
|\%B|Month (full name)|
|\%y|Year (2 digit)|
|\%Y|Year (4 digit)|

## Classes

|class|description|attribus|
|-|-|-|
|date|en supposant le calendrier grégorien actuel|year, month, day|
|time|heure,indépendamment de tout jour particulier(day= 24*60*60 sec)|h, min, sec, microsec,tzinfo|
|datetime|combinaison de date et d'heure avec les attributs respectifs|
|tzinfo|fournit des objets d'informations sur le fuseau horaire|

## Autres

Si vous avez une chaîne de date-heure telle que "2019-07-29 14:30:40Z" et que vous souhaitez la convertir en un objet datetime Python, vous pouvez utiliser la fonction datetime.strptime. Le code suivant vous montre comment réaliser cela :

```python
# Votre chaîne de date-heure
datetime_str = "2019-07-29 14:30:40Z"

# Définissez le format de votre chaîne de date-heure
datetime_format = "%Y-%m-%d %H:%M:%SZ"

# Convertissez la chaîne en un objet datetime Python
python_datetime = datetime.strptime(datetime_str, datetime_format)

# Affichez le résultat
print("Objet datetime Python :", python_datetime)
```

Dans cet exemple :

- ***datetime_str :*** Votre chaîne de date-heure en entrée.
- ***datetime_format :*** Spécifie le format de votre chaîne de date-heure. Dans ce cas, "%Y-%m-%d %H:%M:%SZ" indique le format que vous avez fourni.
- ***datetime.strptime :*** Utilisé pour analyser la chaîne et créer un objet datetime Python.

Assurez-vous que la chaîne de format correspond à la structure de votre chaîne de date-heure. Le "%Z" dans la chaîne de format est utilisé pour analyser le fuseau horaire en tant que "Z" indiquant l'heure universelle coordonnée (UTC).

Après l'exécution de ce code, python_datetime contiendra un objet datetime Python correspondant à votre chaîne de date-heure en entrée.

```python
date_as_string = "2019-07-29 14:30:40Z"
date_object = datetime.strptime(date_as_string, "%Y-%m-%d %H:%M:%SZ")
print("date_object =", date_object, "class = ", type(date_object))
```
De retour à nos données, nous allons examiner la colonne des dates. Tout d'abord, vérifiez le type de données stocké dans la colonne des dates.
Le type de données est int64. Nous aimerions transformer ces entiers en dates. Nous réalisons cela en utilisant à nouveau le module datetime pour cette application.

Une autre fonctionnalité intéressante avec l'utilisation de Python et du module datetime est la génération d'une nouvelle série temporelle. Nous pouvons définir une date de début start="6/1/2019" et une date de fin end="6/01/2020" de la série.

De plus, nous pouvons définir une fréquence, par exemple quotidienne ('D'), horaire ('H'), quotidienne calendaire ('D'), quotidienne ouvrable ('B'), hebdomadaire ('W'), mensuelle ('M'), trimestrielle ('Q'), annuelle ('A'), et bien d'autres. Les fréquences peuvent également être spécifiées comme des multiples de l'une des fréquences de base, par exemple '5D' pour tous les cinq jours.

```python
Nouv_series = pd.date_range(start="6/1/2019", end="6/1/2020", freq="D")
```

## Annex

### Webographie

- https://docs.python.org/3/library/datetime.html