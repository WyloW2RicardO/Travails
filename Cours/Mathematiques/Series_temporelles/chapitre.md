# Series temporelles

L'analyse des données observées à différents points dans le temps.

Un problème significatif dans la modélisation statistique et l'inférence des séries temporelles est le fait que les **_points adjacents dans le temps sont corrélés_** et donc, l'hypothèse sous\-jacente de nombreuses méthodes statistiques conventionnelles, selon laquelle les points de données sont indépendants et identiquement distribués **(iid), n'est pas respectée**.

Ces circonstances ont conduit à un domaine spécialisé dans la modélisation statistique et l'inférence, qui tient compte mathématiquement et statistiquement de cette contrainte due à ces corrélations temporelles.

- [Series temporelles](#series-temporelles)
  - [Propriétés élémentaires](#propriétés-élémentaires)
    - [Aggrégation](#aggrégation)
  - [Estimation de correlations](#estimation-de-correlations)
    - [Correlogramme](#correlogramme)
    - [Stationarité et non-stationarité](#stationarité-et-non-stationarité)
      - [Stationarité](#stationarité)
      - [Non-stationnarité](#non-stationnarité)
      - [Stationarité important](#stationarité-important)
  - [Valeurs manquantes](#valeurs-manquantes)
    - [Séries temporelles univariées](#séries-temporelles-univariées)
    - [Imputer les valeurs](#imputer-les-valeurs)
  - [Lissage](#lissage)
  - [Annexe](#annexe)



Il existe deux approches distinctes, mais **_non nécessairement mutuellement exclusives_**, appelées **approche dans le domaine temporel** et **approche dans le domaine fréquentiel** _Shumway et Stoffer 2011_.

Les méthodes liées à l'**approche dans le domaine temporel** supposent généralement que la **_corrélation entre les points adjacents_** dans le temps **_est mieux_** expliquée en termes de dépendance de la valeur actuelle sur les valeurs passées.
Les valeurs futures d'une série temporelle sont **_modélisées comme une fonction paramétrique_** des valeurs actuelles et passées.

En revanche, les méthodes liées à l'**approche dans le domaine fréquentiel** se concentrent principalement sur les caractéristiques des analyses des séries temporelles **_basées sur les variations sinusoïdales périodiques ou systématiques_** que l'on trouve naturellement dans la plupart des données.

_Shumway et Stoffer 2011_ soutiennent que dans de nombreux cas, les deux approches produisent des réponses similaires pour de longues séries, mais la performance comparative sur de **_petits échantillons est mieux réalisée dans le domaine temporel_**.

## Propriétés élémentaires

Nous supposons que les valeurs de la série temporelle que nous observons sont les réalisations de _variables aléatoires_ $y_1, \ldots, y_n$, qui font à leur tour partie d'un processus stochastique plus large $\{y_i: i \in \mathbb{Z}\}$.

En analyse de séries temporelles, les analogues de la moyenne et de la variance sont la fonction moyenne et la fonction auto-covariance.

La **moyenne** d'une série est définie comme
$$\mu_n = E(y_n)$$

La fonction **auto-covariance** est définie comme
$$\gamma(s, t) = \text{cov}(y_s, y_t)  = E\left[(y_s - \mu_s)(y_t - \mu_t)\right]$$
Si $s = t$, il en résulte que
$$\gamma(t, t) = E\left[(y_t - \mu_t)^2\right] = \text{var}[y_t]$$

L'auto-covariance mesure la dépendance linéaire entre deux points $(y_s, y_t)$ à des moments différents.
- Pour les séries lisses, la fonction auto-covariance reste grande même lorsque $s$ et $t$ sont éloignés,
- Pour les séries hachées, la fonction auto-covariance est proche de zéro pour des séparations importantes.

**L'autocorrélation (ACF)**, également appelée corrélation sérielle, est une mesure de la corrélation interne d'une série temporelle.
La fonction d'autocorrélation est calculée à partir de la fonction d'auto-covariance en divisant par les écarts-types de $y_s$ et $y_t$.
Comme en statistiques classiques, il est plus pratique de traiter une mesure d'association **_entre $-1$ et $1$_**.
$$\rho(s, t) = \frac{\gamma(s, t)}{\sqrt{\gamma(s, s) \gamma(t, t)}}$$
C'est une représentation du degré de similitude entre la série temporelle et une version décalée dans le temps d'elle-même.
Des valeurs élevées d'autocorrélation signifient que le futur est fortement corrélé au passé.

La fonction de **covariation croisée (CCF)** est une **_mesure de la prévisibilité_** d'une série $y_t$ par rapport à une autre série $x_s$.
$$\gamma_{xy}(s, t) = \text{cov}(x_s, y_t) = E\left[(x_s - \mu_{x_s})(y_t - \mu_{y_t})\right]$$
La fonction de covariation croisée peut être mise à l'échelle entre $[-1, 1]$.
$$\rho_{xy}(s, t) = \frac{\gamma_{xy}(s, t)}{\sqrt{\gamma_x(s, s) \gamma_y(t, t)}}\\
$$

### Aggrégation

Parfois, il est nécessaire de remodeler la série chronologique en ***intervalles plus larges*** que ceux présentés. Pour l'agrégation des données de séries temporelles, nous pouvons facilement utiliser les caractéristiques de l'objet ``pd.Series``, car il est doté d'un index et de valeurs. Ainsi, nous utilisons la fonction ``.groupby()`` pour regrouper par la période souhaitée en utilisant la fonction to_period.

## Estimation de correlations

Les valeurs réelles de la moyenne et de la fonction d'autocorrélation ne sont généralement pas connues et doivent être estimées à partir des données échantillonnées $y_1, y_2, ...y_n$.

La fonction moyenne est estimée par la moyenne de l'échantillon
$$
\bar{y} = \frac{1}{n} \sum_{t=1}^n y_t
$$

et la fonction d'autocorrélation théorique est estimée par la fonction d'autocorrélation de l'échantillon
$$
\hat{\rho}(k) = \frac{\hat{\gamma}(k)}{\hat{\gamma}(0)} = \frac{\sum_{t=n-k+1}^{n}(y_{t+k} - \bar{y})(y_t - \bar{y})}{\sum_{t=1}^n(y_t - \bar{y})^2},
$$

pour $k = 0, 1, \ldots, n-1$.

### Correlogramme

L'une des méthodes descriptives les plus utiles en analyse de séries temporelles est le graphique du correlogramme, qui est simplement un graphique des corrélations sérielles $\hat{\rho}(k)$ par rapport au décalage $k$ pour $k = 0, 1, \ldots, M$, où $M$ est généralement bien inférieur à la taille de l'échantillon $n$.

### Stationarité et non-stationarité

#### Stationarité

Une série temporelle est considérée comme stationnaire si ses **_propriétés statistiques ne changent pas au fil du temps_** (telle que la moyenne, la variance et l'autocorrélation).

Dans une série temporelle stationnaire, les points de données ne dépendent pas du moment de leur observation.

#### Non-stationnarité

Une série temporelle est considérée comme non stationnaire si ses **_propriétés statistiques changent au fil du temps_**. Cela peut se produire en raison de tendances, de saisonnalités ou d'autres motifs.

Les séries temporelles non stationnaires sont souvent **_transformées en séries stationnaires_** par des techniques telles que la différenciation ou d'autres transformations.

#### Stationarité important

La stationnarité est cruciale en analyse de séries temporelles car de nombreuses méthodes et modèles statistiques supposent ou **_fonctionnent mieux_** avec des données stationnaires. Lorsqu'une série temporelle est non stationnaire, les relations entre les variables peuvent dépendre du temps, ce qui rend difficile la modélisation ou la prédiction des valeurs futures.

En pratique, avant d'appliquer des modèles de séries temporelles, les analystes vérifient souvent la stationnarité et transforment les données si nécessaire pour respecter les hypothèses de stationnarité.

## Valeurs manquantes

Les valeurs manquantes peuvent poser problème, car souvent, les étapes ultérieures de traitement et d'analyse des données reposent sur des ensembles de données complets. Par conséquent, les valeurs manquantes doivent être **_remplacées par des valeurs raisonnables_**. En statistiques, ce processus est appelé **imputation**.

Lorsqu'on est confronté au problème des valeurs manquantes, il est **_important de comprendre le mécanisme_** qui provoque la perte de données. Une telle compréhension est utile, car elle peut être utilisée comme connaissance préalable pour sélectionner une stratégie d'imputation appropriée. Le mécanisme derrière les données manquantes peut être divisé en **_trois catégories_** :

- **manquantes complètement de manière aléatoire (MCAR)**, les points de données manquants surviennent entièrement de manière aléatoire.
- **manquantes de manière aléatoire (MAR)**, la probabilité qu'une observation soit manquante est également indépendante de la valeur de l'observation elle-même, mais elle dépend d'autres variables.
- **non manquantes de manière aléatoire (NMAR)**(Moritz et al. 2015)

Les valeurs manquantes dans les ensembles de données sont un problème bien connu, car presque partout où les données sont mesurées et enregistrées, des problèmes de **_valeurs manquantes_** surviennent.

Diverses raisons peuvent conduire à des valeurs manquantes : 
- les valeurs peuvent ne pas être mesurées,
- les valeurs peuvent être mesurées mais se perdre, 
- les valeurs peuvent être mesurées mais être **_considérées comme inutilisables_**,

### Séries temporelles univariées

La plupart des algorithmes reposent sur les corrélations entre les attributs, tandis que l'imputation des séries temporelles univariées doit **_utiliser les dépendances temporelles_**.

Par conséquent, l'imputation des séries temporelles univariées est un cas spécial d'imputation, car au lieu de covariables comme dans les ensembles de données multivariés, il est nécessaire d'**_utiliser les dépendances temporelles_** pour effectuer une imputation efficace.

Les techniques capables de réaliser une imputation pour les séries temporelles univariées peuvent être grossièrement divisées en trois catégories (Moritz et al. 2015) :

- **Algorithmes univariés** : Ces algorithmes **_travaillent avec des entrées_** univariées, mais **_n'exploitent généralement pas la nature_** de séries temporelles de l'ensemble de données. Des exemples comprennent : la moyenne, le mode, la médiane, l'échantillon aléatoire.
- **Algorithmes de séries temporelles univariées** : Ces algorithmes sont également capables de **_travailler avec des entrées univariées_**, mais exploitent les **_caractéristiques de séries temporelles_**. Les algorithmes plus avancés sont basés sur des modèles de séries temporelles structurels et **_peuvent traiter la saisonnalité_**.
- **Algorithmes multivariés sur données retardées** : En général, les algorithmes multivariés ne peuvent pas être appliqués aux données univariées. Cependant, comme le temps est une variable implicite pour les séries temporelles, il est possible d'**_ajouter des informations temporelles en tant que covariables_** afin de permettre l'application d'algorithmes d'imputation multivariés.

### Imputer les valeurs

L'évaluation des performances des algorithmes d'**_imputation est généralement biaisée_**, puisque les valeurs réelles sont effectivement manquantes. Ainsi, une **_comparaison des performances_** ne peut être réalisée que pour des données manquantes simulées. En se basant sur un algorithme proposé par _Moritz et al. en 2015_, nous introduisons artificiellement des données manquantes dans nos ensembles de données.

**_Pour évaluer_** l'algorithme d'imputation, nous calculons l'**erreur quadratique moyenne (RMSE)** du jeu de données imputé par rapport au jeu de données original.
Le RMSE est donné par :
$$RMSE = \sqrt{\frac{\sum_{t=1}^n (\hat{y_t} - y_t)^2 }{n}}$$

Il existe plusieur méthodes d'**Algorithmes de séries temporelles univariées** pour remplir les trous dans une Série réindexée.

- `.fillna()` est accompagnée de deux méthodes différentes : le remplissage vers l'avant (_forward-fill_ `method="ffill"`) (Resp. vers l'arrière (_back-fill_ `method='bfill'`)). De cette manière, les valeurs manquantes sont remplies avec la dernière (Resp. avec la prochaine) observation valide.
- ``interpolate()``, ``asfreq()`` ou ``sample()``, le lissage arithmétique et l'interpolation linéaire. Qui peuvent être utilisées pour convertir des données de séries temporelles espacées de manière irrégulière en données espacées de manière régulière.

La procédure est la suivante :

- Tout d'abord, nous **_appliquons une methode_** à la fonction d'imputation.
- Ensuite, nous **_calculons le RMSE_** à l'aide de notre fonction personnalisée RMSE() **le plus faible posible**.
- Enfin, nous traçons les données pour obtenir une impression **_visuelle des performances_** de l'algorithme d'imputation.

## Lissage

Dans de nombreuses analyses de séries temporelles, notre objectif est de comprendre le comportement général d'une série ***sans être perturbé*** par les fluctuations à court terme.

Le lissage est une technique couramment utilisée pour atteindre cet objectif. Il consiste à ***atténuer les variations*** rapides du signal tout en mettant en évidence les tendances plus lentes.

En pratique, cela revient à calculer une moyenne des données sur une période donnée afin de réduire les changements brusques. Cette approche nous aide à mieux percevoir les tendances générales et à détecter les écarts par rapport à ces tendances dans nos séries temporelles.

## Annexe

La série temporelle mensuelle de la station météorologique de la Gironde a été téléchargée le 4 mais 2022 depuis [Meteo France](https://meteofrance.com/). Pour les besoins de ce cours, l'ensemble de données de séries temporelles mensuelles est à téléchargé [ici](https://meteo.data.gouv.fr/datasets?q=).
