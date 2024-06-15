# Régrétions Linéaire

On cherche ici a **expliquer** une variable $Y$ à l'aide d'une variable $X$ indépendant et **reciproquement** par une fontion aprochant au mieux
la regréssion difaire de la corrélation. Toutefois l'exitence d'une relation implique pas une causalité, **corrélationn'est pas causalité** du peut être une autre variable.
<!--- $Y$ : variable à expliquer, endogène ; supposé aléatoire
<!--- $X$ : c'est la variable explicative, exogène ; supposée fix-->
<!--$$f_n\in arg min_{f\in F}\hat{R}_n(f):=arg min_{f\in F}\frac{1}{n}\sum_{i=1}^{n}(y_i-f(x_i))^2$$  
<!--L’estimateur fn perd sont pouvoir prédictif bien que l’erreur 
<!--quadratique moyenne diminue quand l’espace F s’agrandit. 
<!--On restera donc dans l'espace des fonctions linéaire.-->

- [Régrétions Linéaire](#régrétions-linéaire)
  - [Rappel](#rappel)
  - [Coefficient de corelation](#coefficient-de-corelation)
    - [Bravais-Pearson](#bravais-pearson)
      - [Cofficient de détermination](#cofficient-de-détermination)
      - [Coefficient influencé](#coefficient-influencé)
    - [Spearman](#spearman)
      - [coefficient influencé](#coefficient-influencé-1)
    - [Student](#student)
      - [Sinificative](#sinificative)
      - [Interval de Confience](#interval-de-confience)
  - [Simple](#simple)
    - [Hypotese](#hypotese)
      - [lien non symetrique des variables.](#lien-non-symetrique-des-variables)
      - [Etape spécification model](#etape-spécification-model)
    - [Estimation](#estimation)
      - [Teste d'Hypotese](#teste-dhypotese)
    - [Qualité du model](#qualité-du-model)
  - [Multiple](#multiple)
    - [Hypotese](#hypotese-1)
      - [Test d'hypotese](#test-dhypotese)
    - [Adequation](#adequation)
      - [variable qualitatives](#variable-qualitatives)
    - [Detection point atypique](#detection-point-atypique)
      - [Action](#action)
      - [Outils](#outils)
    - [Selection](#selection)
      - [Optimisation](#optimisation)
      - [Comparaison](#comparaison)
    - [Autre](#autre)
  - [Annex](#annex)
    - [Exo](#exo)
      - [Simple](#simple-1)
      - [Multipbe](#multipbe)
      - [Quantitative](#quantitative)
      - [Selection](#selection-1)
    - [Remerciment](#remerciment)

## Rappel

- Moyenne : $x=\frac{1}{n-1}\sum_{i=1}^{n}x_i$
- Ecart-type : $\sigma=\sqrt{\text{Var}}$
- Variance : dispertion des point
  ; $\text{Var}(X)=\frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})^2$
- Covarience : le sens de la liaison et son intensité
  ; $\text{Cov}(X,Y)=\frac{n\bar{x}\bar{y}}{n-1}\sum_{i=1}^{n}x_iy_i$

- Variance transformé : $\text{Var}(\alpha X+\beta) = \alpha^2\text{Var}(X)$
- Variance pythagore : $\text{Var}(X+Y)=\text{Var}(X)+\text{Var}(Y)+2\text{Cov}(XY)$
- Covarience ... : $\text{Cov}(X,X)=\text{Var}(X)>0$
- Covarience symetrique : $\text{Cov}(X,Y)=\text{Cov}(Y,X)$
- Covarience transformé : $\text{Cov}(X,\alpha Y+\beta)=\alpha \text{Cov}(X,Y)$
- Covarience indépendant : $X\amalg Y\Rightarrow\text{Cov}(X,Y)=\text{E}(XY)-\text{E}(X)\text{E}(Y)=0$

Elle **modélise** une liaison monotone si cov non null. La covariance mesure la tendance des deux variables à être simultanément (dessus ou en dessous de leurs espérances respectives).

## Coefficient de corelation

On suposerar que Y est linéairement corréler avec X ;$Y=\beta_0+\beta_1 X$
$$\begin{align*}
Y-\bar{y}=&\beta_0+\beta_1 X-\bar{y}
=\beta_0+\beta_1 X-\beta_0-\beta_1\bar{x}
=\beta_1 (X-\bar{x})\\
\beta_0=&Y-\beta_1 X\\
\beta_1=&\frac{Y-\bar{y}}{X-\bar{x}}
=\frac{(Y-\bar{y})(X-\bar{x})}{(X-\bar{x})^2}\\
\beta_1=&\frac{\sum y_i-\bar{y}\sum x_i-\bar{x}}{\sum (x_i-\bar{x})^2}
=\frac{\text{Cov}(X,Y)}{\text{Var}(X)}
\end{align*}$$

### Bravais-Pearson

La covariance est déffinie dans l'ensemble des réels.  
On normalise à 1 alors de la covariance par le produit des écarts-type des variables ce qui autorise les comparaisons.
$$r=\frac{\text{Cov}(X,Y)}{\sigma(X)\sigma(Y)}$$
<!--\begin{DEM} <!-- lien ?
<!--\end{DEM}-->
#### Cofficient de détermination
La valeur de $r$ n'a pas de signiffication intrinsèque.
$r^2$ s'interprète comme la proportion de variance de $Y$ (resp. $X$) linéairement expliquée par $X$ (resp. $Y$ ).
<!--\begin{DEM} <!-- pour quoi ?
<!--    $$
<!--        r^2=&\frac{\text{Cov}^2(X,Y)}{\text{Var}(X)\text{Var}(Y)}  
<!--        r}^2=&\frac{\frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})(y_i-\bar{y})}{\frac{1}{n-2}\sum_{i=1}^{n}(x_i-\bar{x})^2\frac{1}{n-2}\sum_{i=1}^{n}(y_i-\bar{y})^2}  
<!--        =&\frac{(n-2)^2\sum_{i=1}^{n}(x_i-\bar{x})(y_i-\bar{y})}{(n-1)\sum_{i=1}^{n}(x_i-\bar{x})^2\sum_{i=1}^{n}(y_i-\bar{y})^2}
<!--    $$
<!--    $$
<!--    $$
<!--\end{DEM}-->

#### Coefficient influencé

- **linéariser** l'une des variableLes sur les cas correlation non linéaire monotone, pour se ramené au cas linéaire.
- **jamais** le coefficient de corrélationLes pour les cas non linéaire et non monotone.
- **non-rebuste** : r prend en compte les point extreme car dans sa formule chaque fonction prend en compte la moyenne qui est semsible à ses valeur.
- **variation des points** : r n'est pas un indicateur de taille d'effet.
- **pas de prediction**

### Spearman

Il est basé sur les rangs et est utilisé pour les cas de fort varibilité non abérante.  
**Ordoné** de maniere relative chaque variable aléatoire pour gomé les asperités.
nomé R et S pour les X et Y  
**Aplique** le coefficient de Bravais-Pearson sur R et S

#### coefficient influencé

- test hypotese non-paramétrique donc **aucune hypotese de linéarité} sur la sur X et Y mais monotone
- s'adapte au variable quantitative et ordinales.
- rebuste par les point extreme.
- Puissence  légérement inferieur à Bravais-Pearson.
- si il y à beaucou ex-cau pas coérent, on utilisera le taux de kendall.
<!--
- verifier si il sont proche (moyenne/mediane)
- il faut comme meme se demander pour quoi cela serai vrai ?
(verifier)
- on peut regarder si c'est une erreur (abérante)
- on peut spécifier les criters (extreme) si il influence 
- en dernier recour il faut dire pourquoi on le sumprime
\end{itemize}
\end{COND}-->

### Student

Soit $\epsilon\leqslant 5\%$ seuil d'erreur de type 1.  
La valeur ponctuelle d'un estimateur est en général insuffisante et il est nécessaire de lui adjoindre un intervalle de conffiance de par la symétrique la phrase doit etre vrai dans les deux sens.

#### Sinificative

monotone $\Rightarrow r\neq 0$
$$t=r\sqrt{\frac{n-2}{1-r}}\thicksim S(df)\\
df=n-2\textnormal{ degré liberté et p-value}\leqslant\epsilon$$

#### Interval de Confience
monotone $\Rightarrow 0\notin IC_{1-\epsilon}$

## Simple

### Hypotese

$\forall i\in N, y_i=\beta_0+\beta_1 x_i+\epsilon_i;\epsilon_i$ est le residu (non expliquer)  
les $\epsilon_i$ doit etre aléatoire (indépendant, identiquement FormatRepartie) esperance null
- **homoscédatisité** : varience constante et indépendant de l'observation normalement distibuer
- **non autocorélation** : indépendant entre eux $\text{Cov}(\epsilon_i,\epsilon_j)=0$

#### lien non symetrique des variables.

- $Y$ est obligatoirment continu, quantitative, ordonal d'au moin 5 catégorie, si non c'est une regretion logistique binair ou polytomique
- $X$ est continu ou binair.
- si non ...

#### Etape spécification model
- quel model va-ton tester?
- quel sont les hypotese sous-jacentes?
- quel paremetre de la population fait intervenire?
- estimation parametre $\beta_i$
- teste d'hypothese sur les parametre du model
- effectuer test hypotese ou intervalle de conffiance sur chaque parametre du model.
- adequoition de la regretion s'ecarte t-elle trop des condition du model?

### Estimation

determiner la droite par la methide des moindres carré ordinaire ;
$$\min\Phi(\beta_0,\beta_1)=\min\sum\epsilon^2=\min\sum (y_i+\beta_0+\beta_1 x_i)$$
$$\begin{align*}
\frac{d\Phi}{d\beta_0}=&-2*\sum y_i+\beta_0+\beta_1 x_i
=-2*\sum y_i-2n\beta_0-2\beta_1\sum x_i=0\\
\frac{1}{2n}\frac{d\Phi}{d\beta_0}=&-\sum y_i/n-\beta_0-\beta_1\sum x_i/n
=-\bar{y}-\beta_0-\beta_1\bar{x}=0\\
\beta_0=&\bar{y}-\beta_1\bar{x}\\
\frac{d\Phi}{d\beta_1} =& 2*\sum -x_i y_i+\beta_0 x_i +\beta_1 x_i^2
=2*\sum -x_i y_i+2\beta_0\sum x_i +2\beta_1\sum x_i^2=0\\
\frac{1}{2n}\frac{d\Phi}{d\beta_1}=& \sum x_i y_i/n+\beta_0\sum x_i/n +\beta_1\sum x_i^2/n
=\sum x_i y_i/n+(\bar{y_i}-\beta_1\bar{x_i})\bar{x_i} +\beta_1\sum x_i^2/n=0\\
=& \sum x_i y_i/n+\bar{y_i}\bar{x_i}-\beta_1\bar{x_i}^2 +\beta_1\sum x_i^2/n=0\\
\dots  
\beta_1=&\frac{\text{Cov}(X,Y)}{\text{Var}(X)}
\end{align*}$$

$$\begin{align*}
r=&\frac{\text{Cov}(X,Y)}{\sigma(X)\sigma(Y)}
=\beta_1\frac{\text{Var}(X)}{\sigma(X)\sigma(Y)}
=\beta_1\frac{\sigma(X)}{\sigma(Y)}\\
\beta_1=&r\frac{\sigma(Y)}{\sigma(X)}
\end{align*}$$

par le theoreme de **Gauss-Markov** on demontre que les $\widehat\beta_i$ est un ***estimateur sans biais*** et de plus petite varience mais elle reste des variable aléatoire distribué selon la loi normal donc si on change l'echantillon provoque changement de resulta. Cette proprieté vas nous permetre de faire des intervalle des conffiance et des test d'hypotese.

#### Teste d'Hypotese

- H0 : pas de prediction possible entre les variable ; $\beta_{i}=0$
- H1 : prediction possible ; $\beta_i\neq 0$. 

Q1 : lien entre $X$ et $Y$ avec seuil $\alpha$

Si $H1$ est vrais mais reste un minimum local, par le test de student ou de Ficher qui on les memes consitions que le model linéaire

Q2 : l'intervalle contenan $\beta_i$

faire un test  pour $i>0, IC_i=[\beta_i\pm t_{\alpha,n-2}\sigma(\beta_i)]$ ; $t$ est une V.A de la distrition de Student ; $\alpha=5\%$ et $t\approx 1.96$ 

si $0\in IC\Leftrightarrow H1$ est vrais si non ne rejeter $H0$

### Qualité du model

Decomposition de la variance et r² sont des indicateurs de qualité du model ;

- $r²=0\Leftrightarrow$ moyenne est tout ausi efficace pour predire,
- on cherche $\min\text{Var}(\epsilon)=\min\frac{\sum{(y_i-\bar{y_i})²}}{n}=\min\frac{SCT}{n}$
$$\begin{align*}
SCT&=\sum{(y_i-\bar{y_i})²}=\sum{(y_i-\bar{y_i}+\widehat{y_i}-\widehat{y_i})²}\\
&=\sum{(y_i-\widehat{y_i})²}+\sum{(y_i-\bar{y_i})²}+2\sum{(y_i-\widehat{y_i})(y_i-\bar{y_i})}\\
&=SCR+SCE+0\\
r²&=SCE/SCT=1-\frac{SCR}{SCT} \in [0;1]
\end{align*}$$

## Multiple

### Hypotese

- $\epsilon_i$ est V.A I.I.D selon $N(0;\sigma²)$
- $X_i$ indépendant entre elle (cassé)

Par la ***méthodes des moidre carrés ordinaire*** on determine $\beta_i$, représantan la variation d'une quantité en ajustan sur les autre variable explicative
l'intervalle de conffiance est le meme que le simple ; $IC_i=[\beta_i\pm t_{\alpha,n-2}\sigma(\beta_i)]$

#### Test d'hypotese

- type 1 F global : si le model est equivalent à une constante regroupent toute les variable
- type 2 Student ou F : si X_i est Sinificative
- type 3 F partiel : si l'apport simultanément d'un sous-ensemble de variable améliore le model (comparaisons)

### Adequation

La régretion linéaire s'appuie sur un certain nombre d'hypotese théorique qui doivent etre à peut prés respecté

- **linéarité** : on soppose la relation linéaire ente $X$ et $Y$ ***ou minima monotone***
- **Normalité Distribution** : variable à expliquer devrait etre normalement distribuer ou ne s'écarte pas trop normalement (depant des auteur)
- **Indépendance des observation** : chaque variable entre elle meme a ete mesurer chez individu diferent (non cyclique; temps), si non utiliser un autre model
- **Normalité résidus** : normalement distribuer ou ne s'écarte pas trop normalement (histo, droit d'henry, test de normalité)
- **Esperence residus null** : par construction du model, la moyenne des residut est null
- **Homoscédasticité résidus** : le nuage des residus doit etre irégulier, uniforme, reparti ***autoure de l'absise***.
- **Multicolinéarité** : les VI doit etre indépendant (Varence Inflation Function ente 2 et 10)

iregularité residus : les residus ne doit pas etre corrélé (Durbin-Watsn non sinificatif)
test de normalité( p<$\alpha$ non normal) : test prent la tete sur de petit détaille pour n grand et ne permet pas de determiner n petit. ne pas cumuler les erreur

#### variable qualitatives

- **Binair** : on peut utiliser les code insee, la regretion est equivalent au teste de student
- **Non Binair** : prent p-1 variable binaire dite indicatrice indisosiable (tout ou rien)

### Detection point atypique

#### Action

- **Supretion** : on le ***dit*** sur un criter en amont mais le model devient moin rebuste
- **Garde** : model plus ***rebuste***
- **Double** : avec les deux anlyse on peut ***observe l'impacte***
- **Modifie** :
  - **transformation** de tout le monde par une ***fonction***
  - **windsorising** : prenne le ***max*** de l'interval choisie

#### Outils

- **Univarier** : Sur un petit nombre observation
  - alors tout valeur qui n'apartien pas $[\mu +- 3\sigma]$ sont atypique mais elles est dépant des extremes ; si distribution normale alor 99.7<!-- sont incluse dans l'interval-->
  - **Innerfence** : hor de la boite à moustache $[Q1 - 1.5 IQ ; Q3 + 1.5 IQ]$, regle moin restrictive et insensible valeur extremes
  - outfence
- **Multivarier** : couple de valeur normal devient atypique
  - **levier** : indique influence de l'observation par la ***distance de makalanobis*** $\in [O;1]$ ; si $h>\frac{p+1}{n}$ est anormale
  - **Résidu standardisé** : normalise les residus avec ecartype de 1 pour la comparer avec la regretion si on ne l'avias pas pris
  - **residu studentisé** : on fait la regretion sur le point retiré ; pour $n$ grand et $\alpha=5$ |t_i|>2 (3 ou 3.5) est anormale
  - **distance de cooks** : comparaison de tout les residus entre avec ou sans le point retirer ; $d_i>\frac{4}{(n-p-1)}>1$ est anormal

### Selection

la ***varieter*** des model possible pour expliquer $Y$ avec $p$ variable expliquative ($2^p-1$ model possible) donne une complexiter d'***interpretation*** et le cout pour ***colecter*** toute les données qui sont peut-etre ***colinéaire*** et ne sera pas ***rebuste*** à un autre echentillon.
Meme si on peut metre $p=n-1$ variable, on doit donc minimiser le nombre de variable pour eviter le sur aprentisage grace à la ***connaicence*** du domaine.

#### Optimisation

On teste toutes les combinaison possible des variable qui maximise ou minimise un criter

- **p-value** : attention au erreur de type 1 et $\alpha<0.1$ car reste explicative
- **r²** : mieu c'est si il est ***élever*** mais on peut comparer que des model avec le ***meme nombre de variable***
- **r² corrigé** : criter ***permisif*** car la penaliter au nombre de variable n'est assez importente ; $1-(1-r²)\frac{n-1}{n-p-1}$
- **RMSE** (Root Mean Squared Error) : mieu c'est si il est ***bas*** mais il est ***sensible*** au valeur extreme du au carré ; $\sqrt{\frac{\sum\epsilon_i ²}{n}}$
- **MAE** (Mean Absolut Error) : mais erreur diminie quand p augment ; $\frac{\sum |\epsilon_i|}{n}$
- **AIC** (Akaike Information Criter) : mieu c'est si il est ***bas***, Compareson du SCR avec augmentation du nombre de varible ; $n\log\frac{SCR}{n}+2(p+1)$
- **BIC** (Bayesian Information Criter) : boucoup ***plus penalisan*** que AIC pour $n>7$ ; $n\log(\frac{SCR}{n})+\log(n)(p+1)$

#### Comparaison

Optimiser sans avoir à efectuer toute les regrétion grace aux methode Assendante pour une simpliciter de compréention et de calcul ou Decendante pour un resulta efficase mais une variable suprimer n'est plu remie en cause

>Decedant
>calcul du ***critair*** avec p varible
>***supretion*** de toute les variable une à une
>***choix*** du melleur resultat de criteer
>si le cas on ***boucle*** si non fin

### Autre

- **Modification d'effet** : interaction entre les variable du à leur posibiliter non independente alors on rajoute une variable  egale au produit des deux
- **Model à mesure répéter** (longitudinal, intra-sujet) : mesur au fil du temps sur le meme sujet
- **Model de Cox** : cas du sujet sort au cour de l'etude
- **Regretion logique binaire** : si reponce qui doit donné est binair
- **imputation** : remplacement par resultat de la regretion
- **Regretion Poisson** : comptage au cour du temps
- **Elastiqnet** (Regretion Ridge et Lasso) : acceptation de biais pour augmenter la rebustesse surtout en cas de colinéarité
- **Regretion PLS** (Pantial least squars) : $n<p$

cas des longitudinale (temps)
Genéral Linéair Model

## Annex

package mass : stepAIC (bic aussi)
package olsrr : ols_step_best_subset (meilleur model)
ols_step_< methode >_p (criter p-value)
garder des variable : includ

### Exo

#### Simple

On s'intéresse à un échantillon de 10 salarier d'une entreprise.
On veutle lien entre le salaire et le statut cadre
Avec les variable suivante :

```R
salaire <- c(33,36,40,32,90,17,15,22,29,30)
statut <- c("cadre","cadre","cadre","cadre","cadre","non-cadre","non-cadre","non-cadre","non-cadre","non-cadre")
```

1. Effectuer un test permetant de repondre à la quetion avec un seuil $\alpha$=5<!--.

  ```R
  ## On est bien d'une variable explicative boolein à une continue à expliqué, on peut donc apliqué la regretion linéair et non le test de correlation.

  ## On verifi si il ne sont pas indépendente
  S=seq(0,1,by=0.25)
  # 0.00 0.25 0.50 0.75 1.00
  q1=quantile(salaire,S)
  #    0<!--   25<!--   50<!--   75<!--  100<!-- 
  # 15.00 23.75 31.00 35.25 90.00 
  salaire_quatil=cut(salaire,breaks=q1)
  # (31,35.2] (35.2,90] (35.2,90] (31,35.2] (35.2,90] (15,23.8] (15,23.8] (23.8,31] (23.8,31]
  # Levels: (15,23.8] (23.8,31] (31,35.2] (35.2,90]
  table(salaire_quatil)
  # salaire_quatil
  # (15,23.8] (23.8,31] (31,35.2] (35.2,90] 
  #         2         2         2         3
  cmt=table(salaire_quali,statut)
  #              statut
  #salaire_quali1 cadre non-cadre
  #     (15,23.8]     0         2
  #     (23.8,31]     0         2
  #     (31,35.2]     2         0
  #     (35.2,90]     3         0
  chisq.test(cmt)
  # Pearson's Chi-squared test
  # data:  Cmt
  # X-squared = 9, df = 3, p-value = 0.02929
  # Message d'avis : Dans chisq.test(Cmt) : L’approximation du Chi-2 est peut-être incorrecte
  ### il faut que tout 90<!-- des categorie quantitative
  ## p-value < alpha : les variable ne son pas indépendente, il est donc intérésent de fair un teste de corrélation ou de regretion linéaire simple

  ### student car on pert de l'information avec le X2
  t.test(salaire~statut)

  # On modifie la forme du statut en liste booleen
  statutNombre <- c()
  for(a in statut)
      ifelse(a=="cadre",
          statutNombre<-append(statutNombre,1),
          statutNombre<-append(statutNombre,0))
  > statutNombre
  # 1 1 1 1 1 0 0 0 0 0
  result=lm(salaire~statutNombre)
  summary(result)
  # Call : lm(formula = salaire ~ statutNombre)
  # Residuals:
  #    Min     1Q Median     3Q    Max 
  # -14.20  -9.55  -5.90   4.65  43.80 
  # Coefficients:
  #              Estimate Std. Error t value Pr(>|t|)  
  # (Intercept)    22.600      8.096   2.791   0.0235 *
  # statutNombre   23.600     11.450   2.061   0.0732 .
  # ---
  # Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  # Residual standard error: 18.1 on 8 degrees of freedom
  # Multiple R-squared:  0.3469,    Adjusted R-squared:  0.2652 
  # F-statistic: 4.248 on 1 and 8 DF,  p-value: 0.07323
  ## p-value > alpha : les variable ne son pas linéairement dépandente
  ```

2. Explores les données et prendre les initiative qui vous semblent justifiées.

  ```R
  ## On reparti les salair selon le statut pour faire la boite a moustache
  salaireCadre <- c()
  salaireNonCadre <- c()
  for(a in seq(length(salaire)))
      ifelse(statut[a]=="cadre",
          salaireCadre <- append(salaireCadre,salaire[a]),
          salaireNonCadre <- append(salaireNonCadre,salaire[a]))
  salaireCadre
  # 33 36 40 32 90
  salaireNonCadre
  # 17 15 22 29 30
  salaireMinMax <- c(min(salaire),max(salaire))
  boxplot(salaireCadre,main="salaire cadre",ylim=salaireMinMax)
  ## On remarquera que le point (90,cadre) est un point extreme que l'on desidera de retiré
  salaire0 <- salaire[-5]
  # 33 36 40 32 17 15 22 29 30
  statut0 <- statut[-5]
  # "cadre" "cadre" "cadre" "cadre" "non-cadre" "non-cadre" "non-cadre" "non-cadre" "non-cadre"
  statutNombre0 <- statutNombre[-5]
  # 1 1 1 1 0 0 0 0 0
  ```

3. Répéter l'analyse en ecartant les valeur jugées trop extremes. Qu'observeton ?

  ```R
  result0=lm(salaire0~statutNombre0)
  summary(result0)
  # Call: lm(formula = salaire0 ~ statutNombre0)
  # Residuals:
  #    Min     1Q Median     3Q    Max 
  #  -7.60  -3.25  -0.60   4.75   7.40 
  # Coefficients:
  #               Estimate Std. Error t value Pr(>|t|)    
  # (Intercept)     22.600      2.530   8.934 4.47e-05 ***
  # statutNombre0   12.650      3.794   3.334   0.0125 *  
  # ---
  # Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  # Residual standard error: 5.656 on 7 degrees of freedom
  # Multiple R-squared:  0.6136,    Adjusted R-squared:  0.5584 
  # F-statistic: 11.12 on 1 and 7 DF,  p-value: 0.01252
  ## p-value < alpha : les variable sont linéairement dépandente

  hist(result0$residuals,prob=T)
  curve(dnorm(x,0,var(statutNombre)),l=2,add=T)
  ks.test(result0$residuals,'pnorm',0,var(statutNombre))
  # Exact one-sample Kolmogorov-Smirnov test
  # data:  result0$residuals
  # D = 0.54017, p-value = 0.005516
  # alternative hypothesis: two-sided
  ## p-value < alpha : donc on avais bien le droit d'utiliser la regretion
  ### interpréter
  ### salaireCadre = 22.6 + 12.7
  ### salaireNonCadre = 22.6 + 0
  ```

#### Multipbe

```R
install.packages("readxl") # Telechargement
library("readxl") # chargement
data <- read_excel("dataset.xls")
View(data)
attach(data)
## centré reduite pour les rendre comparable
Cylindree0 <- scale(Cylindree)
Puissance0 <- scale(Puissance)
Poids0 <- scale(Poids)
result0 <- lm(Conso~Cylindree0+Puissance0+Poids0) # regretion
summary(result0)
confint(result0)# Interval de confience

## or
summary(lm(Conso~Cylindree0))
summary(lm(Conso~Puissance0))
summary(lm(Conso~Poids0))

## donc on verifie les codition d'aplecation
plot(result0)
# Normalité résidus ok
# Homoscédasticité ok
# ...
# ...
dwtest(result0) # P>alpha pas de corélation
vif(result0) # Multicolinéarité (>10)
# donc corélation des variable
cor.test(Cylindree0, Puissance0) # fort
cor.test(Cylindree0, Poids0) # fort
cor.test(Puissance0, Poids0) # fort
## et puissance est adapter au poid et meme technologie
## on choisie donc de ne pas prendre le cylindre (raison est non du corolaire)
result1 <- lm(Conso~Puissance0+Poids0) # regretion
summary(result1)
```

#### Quantitative

On s'intéresse au poid des bébé rats selon 3groupe
1:control 2:reduit 3:reduit avec complémantaire

```R
Poid <- c(4.8,4.2,5.6,5.1,5.3,5.9,5.8,6.1,6,5.4,6.2,5.7,5.7,5.6,6.4,6.8,6,5.5)
Group <- c(1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3)

```

1. Calculer les moyenne et l'ecartype pour chaque groupe

```R
tapply(Poid,Group,mean)
#        1        2        3 
# 5.150000 5.866667 6.000000 
tapply(Poid,Group,sd)
#         1         2         3 
# 0.6024948 0.2943920 0.5099020 
```

2. Créer 2 varible indicatrices binaire pour présenter la varible group

```R
G2 <- as.factor(ifelse(Group==2,1,0))
G3 <- as.factor(ifelse(Group==3,1,0))
```

3. Efectuer une regrtion linéaire

```R
medel <- lm(Poid~factor(group))
sumary(model)

```

4. Conclure

on ne compar que paraport au groupe de control

#### Selection

```R
path <- "C:  Users  LENOVO  Downloads  pourboires.csv"
dataSet <- read.table(
    file=path,
    header=TRUE,
    dec=","
)
attach(dataSet)
head(dataSet)
stepAIC(
  object=model,
  direction='backward'
)
ols_step_backward_p(
  p_val=0.05,
  detail=TRUE
)
ols_step_forward_p(
  p_val=0.05,
  detail=TRUE
)
```

### Remerciment

Je remarci VICTIRIEN Marcahd Professeur à l'IA School en 2024 pour son cour regrétion et R
<!-- crée par WyloW2RicardO le 2024-03-10 -->
