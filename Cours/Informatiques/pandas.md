# Pandas

## Lecture

read_json(
read_csv(

## Colonnes

```Python
DataFrame.rename(
    mapper=None
    , *
    , index=None
    , columns=None
    , axis=None
    , copy=None
    , inplace=False
    , level=None
    , errors='ignore')
```

## Index

```Python
# Définir l'index DataFrame en utilisant les colonnes existantes.
DataFrame.set_index(
    keys
    , *

    # Supprimer les colonnes à utiliser comme nouvel index.
    , drop=True

    # S'il faut appejoindre les colonnes à l'index existant.
    , append=False 

    # Qu'il s'agisse de modifier le cadre de données plutôt que d'en créer un nouveau.
    , inplace=False 

    #Vérifiez le nouvel index pour les doublons.
    , verify_integrity=False)
```

## Annex

### Webographie

- https://pandas.pydata.org/