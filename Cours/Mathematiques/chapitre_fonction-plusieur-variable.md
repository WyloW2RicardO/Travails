# Fonctions de plusieurs variables


Vous savez déterminer ses **caractéristiques** (croissance, maximum, limite...).
Mais de nombreux phénomènes dépendent de ***plusieurs paramètres***. Le but de ce cours est de faire le même travail que pour les fonctions d'une variable.

Nous allons étudier des fonctions, dites ***fonctions vectorielles***. Ces fonctions seront donc de la forme $$\forall n,p\in\N ^2\ge 1;f:E\subset\R ^n\rightarrow\R^p$$

Autrement dit, les éléments de l'ensemble de départ $E$ seront des $n$-uplets du type $(x_1,\ldots,x)$ que l'on peut considérer comme des vecteurs, et les éléments de l'ensemble d'arrivée seront des réels.
On notera $x=(x_1,\ldots,x)$ désignera le vecteur.

- [Fonctions de plusieurs variables](#fonctions-de-plusieurs-variables)
  - [Introduction](#introduction)
    - [Topologie](#topologie)
    - [Graphe](#graphe)
      - [Fonctions](#fonctions)
      - [Ligne](#ligne)
      - [Tranches](#tranches)
      - [Niveau](#niveau)
  - [Limites](#limites)
    - [Opérations](#opérations)
      - [Usuelles](#usuelles)
      - [Théorème d'encadrement](#théorème-dencadrement)
    - [Chemin](#chemin)
    - [Continues](#continues)
      - [Prolongement](#prolongement)
  - [Coordonnées polaires](#coordonnées-polaires)
    - [Ver le cartésiennes](#ver-le-cartésiennes)
    - [Limite \& continuité](#limite--continuité)
    - [Exemple](#exemple)

## Introduction

### Topologie

Voici quelques rappels de topologie dans l'espace vectoriel $\R ^n$.

- Le **produit scalaire** usuel
$$\langle x\mid y\rangle =\sqrt{\sum_{i=1}^n{x_i*y_i}}$$
- La **norme euclidienne** sur $\R ^n$ est la norme associée à ce produit scalaire.
$$\|x\| = \sqrt{\langle X \mid X\rangle}.$$
- La **distance** entre le point deux points
  $$\|x-a\|=\sqrt{\sum_{i=1}^n{(x_i-a_i)^2}}.$$
- La **boule ouverte** de centre $a\in\R ^n$ et de rayon $r>0$
$$B_r(a)=\left\{x\in \R ^n \mid \|x-a\|<r \right\}.$$
- On dit que $U$ est un **voisinage** de $a$ si $$\exist r>0;\exist B_r(a)\subset U$$
- On dit que $U$ est un **ouvert** de $\R ^n$ si, pour tout point $$\forall a\in U,\exist r>0;B_r(a)\subset U$$

### Graphe

#### Fonctions

- Une **fonction** Soit $f : E \to \R $ associe à tout $x$ de $E$ ***un seul nombre réel*** $f(x)$.
- le **domaine de définition** de $f$ est le plus grand sous-ensemble tel que, pour chaque $x \in D_f$, $f(x)$ ***soit bien définie***.
- L'**image** d'une fonction
$$\text{Im }f = \big\{f(x)\mid(x)\in E\big\}\subset\R$$
- Une **fonction vectorielle** $f:\R^n\to\R^p$ associe à tout $x$ de $E$ un $p$-uplet de nombres réels $(f_i(x))_{0<i<p}$.

#### Ligne

Nous nous limiterons souvent aux dimensions inférieures ou égales à $3$ pour $n$ et $p$, la généralisation aux dimensions supérieures ne posant pas de problème particulier, sauf pour faire des dessins.

Le **graphe** $\mathcal{G}_f$ de $f$ est le sous-ensemble de $\R^3$ formé des points de coordonnées $(x,y,f(x,y))$ avec $(x,y)$ dans l'ensemble de définition.
$$\mathcal{G}_f= \big\{(x,y,z)\in \R^3 \mid (x,y)\in D_f \text{ et } z=f(x,y)\big\}.$$

#### Tranches

Tracer, pour quelques valeurs de $a$ et $b$, les graphes des ***fonctions partielles*** représente l'intersection du graphe avec le plan choisi $(y=b)$ ou $(x=a)$.
$$f_1:x\mapsto f(x,b) \quad \text{ et } \quad f_2:y\mapsto f(a,y).$$

#### Niveau

On va aussi s'intéresser à d'autres courbes tracées sur la surface.

- La **ligne de niveau** à  $z=c$ : $$L_c =\{(x,y)\in D_f \mid f(x,y)=c\}$$
- La **courbe de niveau** à $z=c$ : On l'obtient en partant de la ligne de niveau $c$ et en remontant à l'altitude $c$, c'est la trace de $\mathcal{G}_f$ dans le plan.  $$\mathcal{G}_f \cap (z=c) = \big\{ (x,y,c)\in \R ^3 \mid f(x,y)=c \big\}.$$
- **Surfaces de niveau** : Pour les fonctions de $3$ variables, le graphe étant dans $\R ^4$, on ne peut le dessiner. La notion analogue à la ligne de niveau est celle de **surface de niveau**, donnée par l'équation $f(x,y,z)=c$.

## Limites

Les notions de limite et de continuité des fonctions d'une seule variable se généralisent en plusieurs variables sans complexité supplémentaire : il suffit de remplacer la valeur absolue par la norme euclidienne.

Soit $f$ une fonction $f: E \subset \R ^n \to \R$ définie au voisinage de $x_0 \in \R ^n$, sauf peut-être en $x_0$.

La fonction $f$ admet pour **limite** le nombre réel unique $\ell$ lorsque $x$ tend vers $x_0$ si : $$\forall \epsilon >0 \quad \exists \delta > 0 \qquad \forall x\in E  \qquad 0< \| x-x_0 \| <\delta \implies | f(x)-\ell | < \epsilon$$

On écrit alors $$\lim_{x_0} f = \ell \qquad \text{ ou }\qquad \lim_{x \to x_0} f(x) = \ell \qquad \text{ ou } \qquad f(x) \underset{x\to x_0}{\longrightarrow} \ell.$$

On définirait de même $\lim_{x \to x_0} f(x) = +\infty$ par : $$\forall A >0 \quad \exists \delta > 0 \qquad \forall x\in E  \qquad 0< \| x-x_0 \| <\delta \implies | f(x) | > A$$

### Opérations

Pour calculer les limites, on ne recourt que rarement à cette définition.
On utilise plutôt les théorèmes généraux : opérations sur les limites et encadrement.
Ce sont les mêmes énoncés que pour les fonctions d'une variable : il n'y a aucune difficulté ni nouveauté.

Soient $f,g:\R ^n\to \R $ définies au voisinage de $x_0 \in \R ^n$ et telles que $f$ et $g$ admettent des limites en $x_0$. Alors : $$\lim_{x_0}(f+g)=\lim _{x_0}f+\lim _{x_0}g \qquad  \qquad \lim _{x_0}(f \cdot g)=\lim _{x_0}f\times \lim _{x_0}g$$

Et si $g$ ne s'annule pas dans un voisinage de $x_0$ : $$\lim _{x_0}\frac{1}{g}=\frac{1}{\lim _{x_0}g} \qquad  \qquad \displaystyle \lim _{x_0}\frac{f}{g}=\frac{\lim _{x_0}f}{\lim _{x_0}g}$$

La composition est aussi souvent utile :
soit $f : \R ^n \to \R; \lim_{x \to x_0} f(x) = \ell$ et soit $g : \R  \to \R ; \lim_{t \to \ell} g(t) = \ell'$.
Alors la fonction de plusieurs variables $g \circ f : \R ^n \to \R $ vérifie $\lim_{x \to x_0} (g \circ f)(x) = \ell'$.

#### Usuelles

Les résultats ci-dessus sont aussi valables pour des limites infinies avec les conventions usuelles :
$$\ell+\infty =+\infty,\quad \ell-\infty =-\infty,\quad \frac{1}{0^+}=+\infty ,\quad \frac{1}{0^-}=-\infty ,\quad \frac{1}{\pm \infty }=0,$$

$$\ell\times \infty =\infty \; (\ell\neq 0),\; \infty \times \infty =\infty \text{ (avec règle de multiplication des signes).}$$

Les formes indéterminées sont : $+\infty -\infty$, $\dfrac{0}{0}$,
$$\dfrac{\infty }{\infty}\qquad  0\times \infty\qquad  \infty^0\qquad  1^{\infty}\qquad 0^0$$

#### Théorème d'encadrement

Soient $f,g,h:\R ^n\to \R $ trois fonctions définies dans un voisinage $U$ de $x_0 \in \R ^n$.

- Si, pour tout $x \in U$, on a $f(x) \le  h(x) \le g(x)$,
- Si $\lim_{x_0} f = \lim_{x_0} g = \ell$,

alors $h$ admet une limite au point $x_0$ et $\displaystyle \lim _{x_0} h=\ell$.

### Chemin

L'unicité de la limite implique que, quelle que soit la façon dont on arrive au point $x_0$, la valeur limite est toujours la même.

Soit $f:\R ^n\to \R $ une fonction définie au voisinage de $x_0 \in \R ^n$, sauf peut-être en $x_0$.

- Si $f$ admet une limite $\ell$ au point $x_0$, alors la restriction de $f$ à toute courbe passant par $x_0$ admet une limite en $x_0$ et cette limite est $\ell$.
- Par contraposée, si les restrictions de $f$ à deux courbes passant par $x_0$ ont des limites différentes au point $x_0$, alors $f$ n'admet pas de limite au point $x_0$.

Détaillons dans les cas des fonctions de deux variables :

- Une courbe passant par le point $(x_0,y_0) \in \R ^2$ est une fonction continue $\gamma : \R  \to \R ^2$, $t \mapsto (x(t),y(t))$, telle que $\gamma(0) = (x_0,y_0)$.
- La restriction de $f$ le long de $\gamma$ est la fonction d'une variable $f \circ \gamma$ : $t \mapsto f \big( x(t),y(t) \big)$.
- Si $f$ a pour limite $\ell$ en $(x_0,y_0)$ alors la première partie de la proposition affirme que $f \big( x(t),y(t) \big) \underset{t \to 0}{\longrightarrow} \ell$.

Une autre formulation possible :
Si $f : \R ^n\to \R $ a pour limite $\ell$ en $x_0 \in \R ^n$ alors, pour toute suite $(u_n)$ d'éléments de $\R ^n$ telle que $u_n \to x_0$, on a $f(u_n) \to \ell$.

### Continues

- $f : E \subset \R ^n \rightarrow \R $ est ***continue en $x_0$*** $\in E$ si $\displaystyle \lim_{x \rightarrow x_0} f(x) = f(x_0)$.
- $f$ est ***continue sur $E$*** si elle est continue en tout point de $E$.

Par les propriétés des limites, si $f$ et $g$ sont deux fonctions continues en $x_0$, alors :

- la fonction $f + g$ est continue en $x_0$,
- de même $fg$ et $f/g$ (avec $g(x) \neq 0$ sur un voisinage de $x_0$)  sont continues en $x_0$,
- si $h : \R  \to \R $ est continue, alors $h \circ f$ est continue en $x_0$.

#### Prolongement

Soit $f: E \subset \R ^n \to \R $.
Soit $x_0$ un point adhérent à $E$ n'appartenant pas à $E$. Si $f(x)$ a une limite $\ell$ lorsque $x \to x_0$,
on peut étendre le domaine de définition de $f$ à $E \cup \lbrace x_0 \rbrace$ en posant $f(x_0)=\ell$.
La fonction étendue est continue en $x_0$.
On dit que l'on a obtenu un ***prolongement de $f$ par continuité*** au point $x_0$.

## Coordonnées polaires

Plutôt que de repérer un point du plan $\R ^2$ par ses coordonnées cartésiennes $(x,y)$, on peut le faire au moyen de sa distance à l'origine et de l'angle formé avec l'horizontale : ce sont les coordonnées polaires.

Soit $M$ un point du plan $\R ^2$. Soit $O=(0,0)$ l'origine. Soit $(O, \vec i, \vec j)$ un repère orthonormé direct.

- On note $r = \| \overrightarrow{OM} \|$, la distance de $M$ à l'origine.
- On note $\theta$ l'angle entre $\vec i$ et $\overrightarrow{OM}$.

On note $[r:\theta]$ les ***coordonnées polaires*** du point $M$. Dans ce cours, $r$ sera toujours positif.
L'angle n'est pas déterminé de manière unique, plusieurs choix sont possibles. 
Pour avoir unicité, on peut limiter $\theta$ à l'intervalle $[0,2\pi[$, ou bien $]-\pi,+\pi]$. On n'attribue généralement pas de coordonnées polaires au point origine (l'angle n'aurait pas de sens).

### Ver le cartésiennes

On retrouve les coordonnées cartésiennes $(x,y)$ à partir des coordonnées polaires $[r:\theta]$ par les formules
$$x = r\cos \theta \qquad\text{ et }\qquad y = r \sin \theta.$$

Autrement dit, on a défini une application :
$$]0,+\infty[\times[0,2\pi[\rightarrow \R ^2 \qquad (r,\theta)\mapsto (r\cos\theta,r\sin\theta)$$

On retrouve  $r$ et $\theta$ à partir de $(x,y)$ par les formules suivantes :
$$r = \sqrt{x^2+y^2}$$

et, dans le cas $x>0$ et $y\ge0$,
$$\theta = \arctan\left(\frac yx\right).$$

Pour les points dans les autres quadrants, on se ramène au quadrant principal où $x>0$ et $y\ge0$.

### Limite & continuité

Lorsque l'on considère des applications $f: E \subset \R ^2 \rightarrow \R$, il est quelquefois plus facile de prouver des résultats de limite, continuité, etc., en passant par les coordonnées polaires.

Soit $f:\R ^2\to \R $ une fonction définie au voisinage de $(0,0)\in \R ^2$, sauf peut-être en $(0,0)$. Si
$$\lim _{r\to 0}f(r\cos \theta ,r\sin \theta )=\ell \in \R $$

existe indépendamment de $\theta$, c'est-à-dire qu'il existe une fonction $\epsilon(r)\underset{r\to0}{\longrightarrow}0$ telle que, pour tout $r>0$ et tout $\theta$, on a :
$$\big| f(r\cos \theta ,r\sin \theta ) - \ell \big| \le \epsilon(r),$$

alors $\displaystyle \lim _{(x,y)\to (0,0)}f(x,y)=\ell$.

Pour clarifier cette proposition et expliquer les différents cas pratiques de la limite, voici comment faire. On exprime $f(x,y)$ en coordonnées polaires en calculant $f(r\cos\theta,r\sin\theta)$.

- Si $\lim_{r\to0} f(r\cos\theta,r\sin\theta)$ existe et si elle ne dépend pas de la variable $\theta$, alors cette limite est la limite de $f$ au point $(0,0)$.
- Si $\lim_{r\to0} f(r\cos\theta,r\sin\theta)$ n'existe pas (ou la limite n'est pas finie), alors $f$ n'a pas de limite finie au point $(0,0)$.
- Si $\lim_{r\to0} f(r\cos\theta,r\sin\theta) = \ell(\theta)$ dépend de $\theta$, alors $f$ n'a pas de limite au  point $(0,0)$. Pour le justifier, on donne deux valeurs $\theta_1$ et $\theta_2$ telles que $\ell(\theta_1) \neq \ell(\theta_2)$.
  
### Exemple

Soit $\ell \in \R $. Soit $f: \R ^2 \rightarrow \R $ une fonction telle que, pour chaque $\theta$ fixé, $\displaystyle \lim_{r \to0} f(r\cos\theta, r\sin\theta)=\ell$. Peut-on en conclure que $f$ admet $\ell$ pour limite au point $(0,0)$ ? La réponse est non !

Autrement dit, regarder la limite de $f$ le long des rayons ne permet pas de trouver la limite de $f$ à l'origine.

**Attention :**
la différence entre cette remarque et les [Coordonnées polaires](#coordonnées-polaires) est subtile. On a une hypothèse en terme de limites du type :
$$\forall \epsilon \quad \exists r_0 \quad \forall r<r_0 \quad \forall \theta \quad  \quad \cdots$$

alors que dans la remarque, on note que l'hypothèse (plus faible) suivante est insuffisante :
$$ \forall \theta \quad \forall \epsilon \quad \exists r_0 \quad \forall r<r_0 \quad \ldots$$
