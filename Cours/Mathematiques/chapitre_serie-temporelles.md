# Serie Temporelles

L'analyse des données observées à ***différents points dans le temps*** est communément appelée l'analyse des séries temporelles. Un problème significatif dans la modélisation statistique et l'**inférence** des séries temporelles est le fait que les ***points adjacents dans le temps sont corrélés***.
On fait donc l'**hypothèse** sous-jacente de nombreuses méthodes statistiques conventionnelles, selon laquelle les points de ***données sont indépendants*** et ***identiquement distribués***, ne sont ***pas respectées***.
Ces circonstances ont conduit à un domaine spécialisé dans la modélisation statistique et d'inférence, qui tient compte mathématiquement et statistiquement de cette contrainte ***due à ces corrélations temporelles***.

Dans le domaine de l'analyse des séries temporelles, il existe ***deux approches*** distinctes, mais ***non nécessairement mutuellement exclusives***, appelées approche dans le domaine **temporel** et approche dans le domaine **fréquentiel**.

Les méthodes liées à l'approche dans le **domaine temporel** supposent généralement que la corrélation entre les points adjacents dans le temps est mieux expliquée en termes de ***dépendance de la valeur actuelle sur les valeurs passées***. Les valeurs futures d'une série temporelle sont modélisées comme une fonction paramétrique des valeurs actuelles et passées.
En revanche, les méthodes liées à l'approche dans le **domaine fréquentiel** se concentrent principalement sur les caractéristiques des analyses des séries temporelles basées sur les ***variations sinusoïdales périodiques*** ou systématiques que l'on trouve naturellement dans la plupart des données.

Shumway et Stoffer 2011 soutiennent que dans de nombreux cas, les deux approches produisent des ***réponses similaires*** pour de longues séries, mais la performance comparative sur de **petits échantillons** est mieux réalisée dans le domaine ***temporel***.

- [Serie Temporelles](#serie-temporelles)
  - [Propriétés élémentaires](#propriétés-élémentaires)
    - [Estimation de correlations](#estimation-de-correlations)
    - [Corrélogramme](#corrélogramme)
  - [Stationarité et non-stationarité](#stationarité-et-non-stationarité)
    - [Stationarité](#stationarité)
    - [Non-stationnarité](#non-stationnarité)
  - [Annex](#annex)
    - [Methode](#methode)
    - [Remerciment](#remerciment)

## Propriétés élémentaires

Nous supposons que les valeurs de la série temporelle que nous observons sont les réalisations de variables aléatoires $y_1, \ldots, y_t$, qui font à leur tour partie d'un processus stochastique plus large $\{y_t: t \in \mathbb{Z}\}$.

En analyse de séries temporelles, les analogues de la moyenne et de la variance sont la fonction moyenne et la fonction autocovariance.
La moyenne d'une série est définie comme
$$
\mu_t = E(y_t).
$$

La fonction autocovariance est définie comme
$$
\gamma(s, t) = \text{cov}(y_s, y_t) = E\left[(y_s - \mu_s)(y_t - \mu_t)\right].
$$

L'**autocovariance** mesure la dépendance linéaire entre deux points $(y_s, y_t)$ à des moments différents. Pour les **séries lisses**, la fonction ***autocovariance reste grande*** même lorsque $s$ et $t$ sont éloignés, tandis que pour les séries hachées, la fonction autocovariance est proche de zéro pour des séparations importantes.
Si $s = t$, il en résulte que
$$
\gamma(t, t) = E\left[(y_t - \mu_t)^2\right] = \text{var}[y_t],
$$

Comme en statistiques classiques, il est plus pratique de traiter une mesure d'association ***entre $-1$ et $1$***. La fonction d'autocorrélation (ACF) est calculée à partir de la fonction d'autocovariance en divisant par les écarts-types de $y_s$ et $y_t$.
$$
\rho(s, t) = \frac{\gamma(s, t)}{\sqrt{\gamma(s, s) \gamma(t, t)}}
$$

L'autocorrélation, également appelée **corrélation sérielle**, est une mesure de la corrélation interne d'une série temporelle. C'est une représentation du degré de similitude entre la série temporelle et une version décalée dans le temps d'elle-même. ***Des valeurs élevées d'autocorrélation signifient que le futur est fortement corrélé au passé***.

La fonction de covariation croisée est une mesure de la prévisibilité d'une série $y_t$ par rapport à une autre série $x_s$.
$$
\gamma_{xy}(s, t) = \text{cov}(x_s, y_t) = E\left[(x_s - \mu_{x_s})(y_t - \mu_{y_t})\right]
$$

La fonction de covariation croisée peut être mise à l'échelle entre $[-1, 1]$, appelée **fonction de corrélation croisée (CCF)**.
$$
\rho_{xy}(s, t) = \frac{\gamma_{xy}(s, t)}{\sqrt{\gamma_x(s, s) \gamma_y(t, t)}}
$$

### Estimation de correlations

Les valeurs réelles de la moyenne et de la fonction d'autocorrélation ne sont généralement pas connues et doivent être estimées à partir des données échantillonnées.

La fonction moyenne est estimée par la moyenne de l'échantillon
$$
\bar{y} = \frac{1}{n} \sum_{t=1}^n y_t,
$$

et la fonction d'autocorrélation théorique est estimée par la fonction d'autocorrélation de l'échantillon
$$
\hat{\rho}(k) = \frac{\hat{\gamma}(k)}{\hat{\gamma}(0)} = \frac{\sum_{t=n-k+1}^{n}(y_{t+k} - \bar{y})(y_t - \bar{y})}{\sum_{t=1}^n(y_t - \bar{y})^2},
$$

### Corrélogramme

L'une des méthodes descriptives les plus utiles en analyse de séries temporelles est le graphique du correlogramme, qui est simplement un ***graphique des corrélations sérielles***, $\hat{\rho}(k)$ par rapport au décalage $k$ pour $k = 0, 1, \ldots, m$, où $m$ est généralement ***bien inférieur*** à la taille de l'échantillon $n$.

## Stationarité et non-stationarité

En pratique, avant d'appliquer des modèles de séries temporelles, les analystes **vérifient** souvent la stationnarité et transforment les données si nécessaire pour respecter les hypothèses de stationnarité.

### Stationarité

Une série temporelle est considérée comme stationnaire si ses propriétés statistiques, telles que la moyenne, la variance et l'autocorrélation, ***ne changent pas au fil du temps***. Dans une série temporelle stationnaire, les points de données ne dépendent pas du moment de leur observation. Formellement, une série temporelle est stationnaire si :

1. **Moyenne constante ($\mu$) :** La moyenne de la série reste constante au fil du temps.
$$ E(y_t) = \mu $$
2. **Variance constante ($\sigma^2$) :** La variance de la série reste constante au fil du temps.
$$ \text{Var}(y_t) = \sigma^2 $$
3. **Autocovariance ($\gamma$) indépendante du temps :** L'autocovariance entre $y_t$ et $y_{t+k}$ est une fonction de $k$ uniquement et ne dépend pas de $t$.
$$ \gamma(t, t+k) = \gamma(k) $$

La stationnarité est **cruciale en analyse** de séries temporelles car de nombreuses méthodes et modèles statistiques supposent ou ***fonctionnent mieux*** avec des données stationnaires.

### Non-stationnarité

Une série temporelle est considérée comme non stationnaire si ses propriétés statistiques ***changent au fil du temps***. Cela peut se produire en raison de tendances, de saisonnalités ou d'autres motifs. Les séries temporelles non stationnaires sont souvent transformées en séries stationnaires par des techniques telles que la différenciation ou d'autres transformations.
Lorsqu'une série temporelle est non stationnaire, les relations entre les variables peuvent dépendre du temps, ce qui rend ***difficile la modélisation ou la prédiction*** des valeurs futures.

## Annex

### Methode

### Remerciment

Je remercie monsieur Souleman professeur à l'IA School en 2024 ; <job.ndoge@gmail.com>