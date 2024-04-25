
# Extremums

Ce chapitre est consacré à l'étude de l'existence des extremums.
Nous apprendrons à repérer les extremums locaux (qui ne sont pas nécessairement des minimums ou maximums globaux).
On terminera ce chapitre par l'étude des "extremums liés", où la recherche est limitée par une contrainte.

- [Extremums](#extremums)
  - [Définition](#définition)
    - [Extremum local](#extremum-local)
    - [Point critique](#point-critique)
  - [Formule de Taylor à l'ordre p](#formule-de-taylor-à-lordre-p)
    - [Interprétation](#interprétation)
      - [Numériques](#numériques)
      - [Géométrique](#géométrique)
    - [Demonstration ordre 2](#demonstration-ordre-2)
    - [Exemple](#exemple)
  - [Caractérisation](#caractérisation)
    - [Critère de Monge](#critère-de-monge)
    - [Valeurs propres de la hessienne](#valeurs-propres-de-la-hessienne)
  - [Liés](#liés)
    - [Plan](#plan)
      - [Theoreme k contrtraintes](#theoreme-k-contrtraintes)

## Définition

### Extremum local

Soit $f:U\to \R$ une fonction de deux variables, o\`u $U$ est un ouvert de $\R^n$.

On dit que $f$ admet un **maximum local** (resp. **minimum local**) en $x_0\in U$ s'il existe une boule ouverte $B\subset U$ centrée en $x_0$ telle que $$\forall x \in B,f(x) \le f(x_0)\qquad (\text{resp. }f(x) \ge f(x_0))$$.
On dit que $f$ admet un **extremum local** en $x_0$ si elle y admet un maximum local ou un minimum local.

### Point critique

Les points de $U$ où le gradient de $f$ s'annule sont appelés **points critiques** de $f$.
Le résultat précédent dit que les extremums d'une fonction sur un ouvert ne peuvent se produire qu'en un point critique. La ***réciproque est fausse***. Par exemple, pour $f: x \mapsto x^3$, le point $x_0=0$ est un point critique, mais ce n'est ni un maximum local ni un minimum local (c'est un **point d'inflexion**)

Si $f\in\mathcal{C}^2$ admet un extremum local en $x_0$ d'un ouvert $U$, alors $$\forall i\in (1,\dots n),\frac{\partial f}{\partial x_i}(x_0) = 0 $$
Autrement dit, si $f$ possède un minimum ou maximum local en un point, alors le gradient de $f$ est le vecteur nul en ce point.

Par définition, un point critique qui n'est ni un maximum local ni un minimum local est nommé ***point-selle*** (ou ***point-col***).

**Preuve**
La fonction d'une variable $x\mapsto f(x,y_0)$ admet un extremum local en $x_0$ sur un ouvert de $\R$, donc sa dérivée, qui est $\frac{\partial f}{\partial x}  (x,y_0)$, s'annule en $x_0$. On fait de même avec $y\mapsto f(x_0,y)$.

<!--
    Une fonction $f : \R^n \to \R$ est de **classe $\mathcal{C}^2$} si $f$ est de classe $\mathcal{C}^1$ (c'est-à-dire ses dérivées partielles existent et sont continues) et si ses dérivées partielles sont aussi de classe $\mathcal{C}^1$.
\end{definition}
-->
<!--
Choisissons pour $x_0$ une valeur telle que $f'(x_0)=0$ et $f''(x_0)\neq 0$. 
Alors, pour $h$ assez petit, le terme $ \frac{h^2}{2} f''(x_0) + h^2 \epsilon (h)$ est du même signe que $f''(x_0)$. Si par exemple $f''(x_0)>0$, on en déduit que $f(x_0 + h) \ge f(x_0)$ (pour $h$ proche de $0$) et donc que $f$ admet un minimum local en $x_0$.
Ci-dessous, on va en déduire une caractérisation des minimums et maximums.
-->

<!--
Le but va être d'améliorer cette approximation par un **développement limité** à l'ordre $2$.
On rappelle la notation petit $o$.
Soit $g :\R^2\to \R$ une fonction définie au voisinage de $(0,0)$. On dit que $g$ est ***négligeable*** par rapport à $\|(x,y)\|^n$ au voisinage de $(0,0)$ et on note $g=o\left(\|(x,y)\|^n\right)$ si 
$$\lim_{(x,y)\to(0,0)}\frac{g(x,y)}{\|(x,y)\|^n}=0.$$
-->

## Formule de Taylor à l'ordre p

Si $U$ est un ouvert de $\R^n$ et si $f: U \to \R$ est une fonction ***$p$ fois différentiable*** en $x \in U$ alors $$f(x+h) = f(x) \  + \  \sum_{k=1}^p{\dfrac{1}{k!} d^k f (x) (h^{[k]})} \ \  + \ \ o\left(\|h\|^p\right)$$
où on a noté $h^{[k]} = (h,h,\ldots,h) \in \R^k$.

### Interprétation

#### Numériques

Connaissant les valeurs de $d^k f (x) (h^{[k]})$ uniquement en $x_0$, on en déduit une approximation de $f$ en tout $x$ proche de $x_0$.
Si $x$ est proche de $x_0$ (c'est-à-dire si $h$ est petits), alors on remplace le calcul de $f(x)$ qui peut être compliqué par une bonne approximation donnée par le DL à l'ordre $1$, ou mieux, le DL à l'ordre $2$.

#### Géométrique

Un développement limité à l'ordre $1$ correspond à approcher le graphe de $f$ par un plan tangent d'équation $z=a +bx+cy$.
Un développement limité à l'ordre $2$ correspond à une approximation par une surface quadratique, c'est-à-dire une surface définie par une équation de degré $2$ :
$$z=a +bx+cy + dx^2 + 2exy + fy^2.$$
Cette approximation est meilleure mais reste valable uniquement autour du point $(x_0,y_0)$ considéré.

### Demonstration ordre 2

Exprimon d'abord la formule de Taylor en deux variables à l'aide de vecteurs et matrices.
De façon plus générale, pour $f : \R^n \to \R$, si on note $x_0=(x_1,\ldots,x_n)$ et $h=(h_1,\ldots,h_n)$ (considérés comme des vecteurs colonnes), où $h^T$ désigne le vecteur ligne obtenu par transposition du vecteur colonne $h$.

La matrice jacobienne est ici une matrice ligne et $$J_f(x_0) \times h = \sum_{i=1}^n h_i\frac{\partial f}{\partial x_i}(x_0)$$.

Remarque : on pourrait aussi utiliser le gradient de $f$ qui est un vecteur colonne : $$df(x_0) (h) = J_f(x_0) \times h = \langle \nabla f (x_0) \mid h^T \rangle$$
Soit $e=(e_1,\ldots,e_n)$ la base canonique de $\R^n$.
Alors, pour tout $x \in U$, pour tous $i,j \in \{1,\ldots,n\}$, on a $$d^2 f(x) (e_i,e_j) =\frac{\partial^2 f}{\partial x_i\partial x_j}(x).$$

On rappelle que la [matrice hessienne](./chapitre_differentiel.md#hessienne) de $f$ en $x$ est la matrice des dérivées partielles secondes.
Par bilinéarité, si $h$ et $k$ sont deux vecteurs de $\R^n$ de coordonnées respectives $(h_1,\ldots,h_n)$ et $(k_1,\ldots,k_n)$ (vus comme des vecteurs colonnes), alors
$$d^2 f (x) (h,k)= h^T \cdot  H_f(x) \cdot k = \sum_{i=1}^n \sum_{j=1}^n h_ik_j   \frac{\partial^2 f}{\partial x_i \partial x_j}(x).$$
Autrement dit, $H_f(x)$ est la matrice de la forme bilinéaire $d^2f(x)$ par rapport à la base canonique de $\R^n$. Le [théorème de Schwarz](./chapitre_differentiel.md#théorème-de-schwarz) assure de plus que la matrice hessienne est symétrique si $f$ est de classe $\mathcal{C}^2$ sur $U$.
On vérifie que les termes de degré $2$ s'expriment à l'aide de la hessienne : $$\frac{1}{2} h^T \ H_f(x_0) h = \frac{1}{2} \sum_{i=1}^n \sum_{j=1}^n h_ih_j\frac{\partial f}{\partial x_ix_j}(x_0)$$

on a :$${\displaystyle f(x_0+h) = f(x_0) + J_f(x_0) h + \frac12 h^T H_f(x_0) h + o\left(\|h\|^2\right)}$$

Où l'on a effectué le changement de variable $x=x_0+h$ (et donc $h=x-x_0$).
On rencontre aussi fréquemment cette formule sous la forme : $$f(x) = f(x_0) + J_f(x_0) (x-x_0) + \frac12 (x-x_0)^T H_f(x_0) (x-x_0) + o\left(\|x-x_0\|^2\right)$$

### Exemple

Donnons ici les différentielles d'ordre $2$ pour deux types de fonctions classiques : les applications affines et les applications quadratiques.

- Une application affine $f : x \mapsto \ell(x)+b$ avec $\ell \in \mathcal{L}(\R^n,\R)$ et $b \in \R$ est
  - deux fois différentiable et sa différentielle seconde est identiquement nulle.
  - C'est la version étendue du fait que la dérivée seconde de la fonction d'une variable $x \mapsto ax+b$ est nulle.
- Une application quadratique $f: x \mapsto \phi(x,x)$ avec $\phi \in \mathcal{L}(\R^n \times \R^n, \R)$ est
  - deux fois différentiable et sa différentielle seconde est constante, et même égale à $2\phi$ si $\phi$ est symétrique.
  - C'est la version étendue du fait que la dérivée seconde de la fonction d'une variable $x \mapsto ax^2+bx+c$ est constante.

## Caractérisation

La recherche pratique des extremums locaux pour une fonction d'une variable se passe donc ainsi :

- On recherche les points critiques donnés par l'équation $f'(x) = 0$.
- Pour chaque point critique $x_0$, on calcule la dérivée seconde :
  - si $f''(x_0) > 0$, alors $f$ admet un minimum local en $x_0$,
  - si $f''(x_0) < 0$, alors $f$ admet un maximum local en $x_0$,
  - si $f''(x_0) = 0$, alors  il faut approfondir l'étude.

Lorsque $f : [a,b] \to \R$ est définie sur un intervalle compact, il faudra en plus étudier le comportement de $f$ en $a$ et en $b$ (c'est-à-dire au bord du domaine de définition). Comme l'ensemble de départ est compact, on a la garantie de l'existence d'extremums globaux.

### Critère de Monge

Pour une fonction $f : \R^2 \to \R$, nous utiliserons la notation de Monge, qui fournit un critère simple pour détecter un minimum ou un maximum local.

Soit $f : \R^2 \to \R$ une fonction de classe $\mathcal{C}^2$ et soit $(x_0,y_0)$ un point critique de $f$. On pose $$r=\frac{\partial^2 f}{\partial x^2}(x_0,y_0)\qquad s=\frac{\partial^2 f}{\partial x \partial y}(x_0,y_0) \qquad t=\frac{\partial^2 f}{\partial y^2}(x_0,y_0)$$ Alors :

- si $rt-s^2>0$ et $r>0$, alors $(x_0,y_0)$ est un minimum local de $f$,
- si $rt-s^2>0$ et $r<0$, alors $(x_0,y_0)$ est un maximum local de $f$,
- si $rt-s^2<0$, alors $(x_0,y_0)$ n'est ni un minimum local ni un maximum local : c'est un point-selle,
- si $rt-s^2=0$, on ne peut pas conclure directement (il faut approfondir l'étude).

**Remarque** : $rt-s^2$ est le déterminant de la [matrice hessienne](./chapitre_differentiel.md#hessienne) en $(x_0,y_0)$, $H_f(x_0,y_0) = \begin{pmatrix}r&s\\s&t\end{pmatrix}$.

### Valeurs propres de la hessienne

Nous reformulons le critère précédent en termes de valeurs propres de la matrice hessienne.
Les valeurs propres de la matrice $H_f(x_0,y_0)$ sont les racines du polynôme caractéristique qui est défini par $\chi(\lambda)=\det \left( H_f(x_0,y_0)-\lambda I \right)$.

Soient $U$ un ouvert de $\R^2$, $f$ une fonction de classe $\mathcal{C}^2$ sur $U$ et $(x_0,y_0)\in U$ un point critique de $f$.

- Si $H_f(x_0,y_0)$ a ses deux valeurs propres strictement positives, alors $f$ présente un minimum en $(x_0,y_0)$.
- Si $H_f(x_0,y_0)$ a ses deux valeurs propres strictement négatives, alors $f$ présente un maximum en $(x_0,y_0)$.
- Si $H_f(x_0,y_0)$ a deux valeurs propres de signes opposés, alors $f$ ne présente pas d'extremum en $(x_0,y_0)$ : c'est un point-selle.
- Dans les autres cas, on ne peut rien dire (tout peut arriver).

## Liés

Dans cette section, nous allons nous intéresser à la recherche des extremums sous certaines contraintes.

Vous savez que le mont Blanc culmine à 4807 mètres. Mais si vous randonnez autour du mont Blanc, quelle sera votre altitude maximale selon le parcours que vous effectuez ?

### Plan

Il s'agit de trouver les extremums de $f(x)$ lorsque $x$ appartient à une hypersurface définie par $g(x) = 0$.
Autrement dit, ces deux courbes sont tangentes entre elles. Cela signifie que la courbe $f(x) = f(x_0)$ et la courbe $g(x)=0$ ont la même tangente au point $x_0$.

Noter qu'on peut aussi considérer la contrainte $g(x)=c$ (où $c$ est une constante), qui se ramène au cas énoncé dans le théorème en considérant $g(x)-c=0$.

#### Theoreme k contrtraintes

Soient $f: U \to \R$ et $g_1,\ldots,g_k : U \to \R$ des fonctions de classe $\mathcal{C}^1$
sur un ouvert $U$ de $\R^n$.

Supposons que les vecteurs $\nabla g_1(x),\ldots, \nabla g_k(x)$  soient linéairement indépendants, pour tout $x$ de l'ensemble $S$ défini par $(g_1(x)=0,\ldots,g_k(x)=0)$.

Si $f$ admet un extremum lié sur $S$ en $x_0$ alors le vecteur $\nabla f(x_0)$ est combinaison linéaire des vecteurs $\nabla g_i(x_0)$ : il existe $\lambda_1,\ldots,\lambda_k$ tels que $$\nabla f(x_0)=\sum_{i=1}^k\lambda_i\nabla g_i(x_0)$$ Les réels $\lambda_1,\ldots,\lambda_k$ sont appelés ***multiplicateurs de Lagrange***.

La ***réciproque fause***. Nous avons une condition nécessaire mais pas suffisante. C'est l'équivalent de la nullité de la dérivée pour les extremums libres : en un extremum libre la dérivée est nulle, mais la dérivée peut être nulle sans que la fonction ait un extremum (penser à $x\mapsto x^3$ en $x=0$).

**Attention !** : Les équations ne sont pas linéaires. Ainsi, le système obtenu est généralement très difficile voire impossible à résoudre, même pour des situations simples. C'est pourquoi les fonctions que l'on étudiera dans la suite sont toutes très simples, afin de pouvoir résoudre les équations.
