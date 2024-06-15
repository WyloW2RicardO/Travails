# Data Scraping

- [Data Scraping](#data-scraping)
  - [Choisir ses combats](#choisir-ses-combats)
    - [observation](#observation)
    - [Theoriser](#theoriser)
      - [KeyResults](#keyresults)
      - [SMART](#smart)
      - [AMDEC](#amdec)
      - [Eisenhower](#eisenhower)
  - [Ananlyse](#ananlyse)
    - [Modelisation](#modelisation)
    - [Décition](#décition)
  - [Annex](#annex)
    - [Code](#code)
      - [welcometothejungle](#welcometothejungle)
      - [veja](#veja)

## Choisir ses combats

Il faut donnée du sens au travail à executer

### observation

nombre de projet en cour
proceder actuel
qui à comender les projet
pourquoie cette solution
comprendre la problematique et si les information du projet seront pertinant
simplifier ou modifier la problematique
quelle est le meilleur endroit pour faire la recherche de donné
reputation
changer l'offre
verifier si la solution existe pas déjà

### Theoriser

#### KeyResults

determier la stratigie -etoile polaire-
et d'y arrivet par des projet structurent qui serat représanter en cascade
c'est le lien entre objectif et la materialité du terrain, elle doit etre donc public au sein de l'entreprise pour maximiser les chance de remonter l'information réel
ne pas oublier qu cette objectif doit etre quantifiable sur une durér de donnéer
decider : assumer quoi qui quand et expliquer pourquoi comment

#### SMART

Specifique,Mesurable,Achevable,Réel,Temps
si il est smart, on justifie le projet

#### AMDEC

Analyse des modes de défaillance, leurs effets et de leur criticité
C'est le choi
tableaux représentant le taux de priorité de l'evenement de 1 à 100 c'est le produit des trois catgorie

|event|importance|Possible|fréquance|Prioriter|
|-|-|-|-|-|
||GRAVITER|DETECTABLE|FREQUANCE|RISQUE|
||4-vital|5-imposible|5-toujours||
||1-négligeable|1-facile|1-jamais||
||VALEUR|CAPACITER|UTILE|OPORTUNITE|
||4-vital|5-extrem|5-continu||
||1-negligeable|1-absence|1-jamais||

#### Eisenhower

||Urgent|NON|
|-|-|-|
|important|p1-Faire|p3-Planifier|
|NON|p2-Déléguer|p4-Supprimer|

## Ananlyse

On vas ici parler de la methode.
vrifier la constence de l'affichage de l'information
on regarde les constance de url pour comprendre sa structure lors de la navigation.
lors des requet html, la reponse du serveur en structur des codes HTML (200 à 600)

### Modelisation

une fois avoir compri l'url.
on regarde la constence de la ``class`` de l'élément qui nous interesse
pui on cherche son ``uuid`` pour l'utiliser dans ``network``/``XHR`` pour esayer de recupérer directement les bases de données (peut etre dans plusieur fichier) par un scrole des ``fetch``
On vas verifier si on est capable de recuperé des ressources

### Décition

## Annex

PhantomBuster

### Code

#### welcometothejungle

````python
>### lancer la requette html
import requests 
from bs4 import botifulsoup4
>### coller dans le bloc note
import pyperclip
>### url de la page a scrapper
url="https://www.welcometothejungle.com/fr/jobs?refinementList%5Boffices.country_code%5D%5B%5D=FR&refinementList%5Bcontract_type%5D%5B%5D=full_time&query=python&page=1"
>### exection de la requete
getUrl=requests.get(url) ## reponce html
>### recuperer le site
contentXml = r.content 
>### meta sturcturer du site sous forme d'arbre syntaxique
soupXml = BeautilfulSoup(
  contentUrl
  >### pour se promener
  , features="html.parser" 
  )
>### retourne du xml si c'est un site dynamique
>### recherche data dans XHR ici "algolia"
>### ou utilisation de selenium
import selenium
drever = webdrever.Chrome()
drever.get(getUrl)
contentHtml = drever.page_source()
soupHtml = BeautilfulSoup(
  contentHtml
  >### pour se promener
  , features="html.parser" 
  )
>### trouver une class spécifique pour du html
>### recherche du span nomé
spanEntreprise = soupHtml.find_all( 
  "span"
  , "sc-ERObt ldmfCZ sc-6i2fyx-3 eijbZE wui-text"
  )
listNomEntreprise = [index.text for index in spanEntreprise]
divPoste = soupHtml.find_all(
  "div"
  , ""
  )
listNomPoste = [index.text for index in divPoste]

````

#### veja

Vous êtes Data-Analyst chez Adidas. On vous demande d’évaluer la concurrence, à commencer par Veja
Dans la section Enfants du site [veja-store.com](http://veja-store.com) :
Extraire

- Les modeles de chaussures
- Les prix
- le prix moyen d’une paire de chaussures pour enfant Veja
- prix median d’une paire de chaussures pour enfant Veja

Choisir son combat :
il peut etre interessent de regardes les prix de la concurence mai ici il dificil de faire du sport à un enfant si petite

Comprendre la structure du site :
soite suposon ici que on nous oblige à le faire nous avont `inspect` le premier element
nous remarquons qu'iles organiser sous forme de liste qui contien des divitions

Determiner un plan d action
On vas dabor regarder si il exte pas un dictionaire presenent
ici il n'y a que 4 fetch et pas de dico
on vas donc faire un peut de code

Identifier les outils

Identifier les classes

Coder

```Python
url = https://www.veja-store.com/en_eu/c/kids
reponce = requests.get(url)
soup = BeautifulSoup(reponce.text, "html.perser")
produits = soup.find_all(div, class_="product-item-info")
data = []
for produit in produits :
  nom = produit.find("a", class_ = "product-item-link").text.strip()
  prix = produit.find("span", class_ = "price").text.strip().replace(" €", "").astype(float)
  data.append({"pair" : nom, "prix" : prix})
print(df["prix"].mean())
print(df["prix"].mean())
```
