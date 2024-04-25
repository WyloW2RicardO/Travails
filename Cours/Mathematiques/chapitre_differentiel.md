# Calcul différentiel

Pour une fonction de plusieurs variables, il y a une dérivée pour chacune des variables, qu'on appelle dérivée partielle. L'ensemble des dérivées partielles permet de reconstituer une approximation linéaire de la fonction : c'est la différentielle.
La différentielle est une façon de regrouper toutes les dérivées partielles dans une seule fonction.

Soit $f : \R \to \R$ une fonction d'une seule variable.
La **dérivée** de $f$ en $x_0 \in \R$, si elle existe, est :
$$f'(x_0) = \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h}.$$

- [Calcul différentiel](#calcul-différentiel)
  - [Ordre 1](#ordre-1)
    - [Jacobienne](#jacobienne)
    - [Différentiabilité](#différentiabilité)
      - [Continuité](#continuité)
      - [Partielles](#partielles)
      - [Directionnelle](#directionnelle)
  - [Ordre 2](#ordre-2)
    - [Théorème de Schwarz](#théorème-de-schwarz)
    - [Hessienne](#hessienne)
    - [Différentiabilité seconde](#différentiabilité-seconde)
  - [Fonctions de classe](#fonctions-de-classe)
    - [Theoreme](#theoreme)

## Ordre 1

Soit $f : U \subset \R^n \to \R$, où $U$ est un ouvert de $\R^n$.
On dit que $f$ **admet** une dérivée partielle par rapport à la variable $x_i$ au point $x_0=(a_1,\dots, a_n) \in \R^n$ si la fonction d'une variable
$$x_i \mapsto f(a_1,\dots,a_{i-1},x_i, a_{i+1},\ldots,a_n)$$

est dérivable au point $a_i$. Dit autrement, on définit la dérivée partielle de $f$ par rapport à $x_i$ au point $x_0=(a_1,\ldots, a_n)$ par  
$$\lim_{h \rightarrow 0}
\frac{f(a_1, \ldots, a_{i-1} , a_i + h, a_{i+1} , \dots , a_n) - f(a_1,\ldots, a_n)}{h}$$

si cette limite existe et se note $\partial_{x_i} f(x_0)$ ou bien $f'_{x_i} (x_0)$
$$\frac{\partial f}{\partial x_i} (x_0).$$

C'est la dérivée partielle de $f$ par rapport à $x_i$ au point $x_0$.
Le symbole $\partial$ se lit d rond.

### Jacobienne

La matrice Jacobienne est la matrice des dérivées partielles d'ordre $1$.
Soit $f : \R^n \to \R$ une fonction de $n$ variables.
La **matrice Jacobienne** de $f$ en $x=(x_1,\ldots,x_n)$ est la matrice $n \times 1$ :
$${\displaystyle J_f(x) = \left( \frac{\partial f}{\partial x_i}(x) \right)_{1 \le i}}$$

### Différentiabilité

Soit $f : \R^n \to \R$. La fonction $f$ est **différentiable** en $x_0 \in \R^n$ s'il existe une application linéaire $\ell : \R^n \to \R$ telle que :
$$\lim_{\|h\| \to 0}  \frac{f(x_0+ h) - f(x_0) - \ell(h)}{\|h\|} = 0$$

L'application $\ell $ est la **différentielle** de $f$ en $x_0$ et se note $d f(x_0)$.

Dans le cas des fonctions d'une variable, on a $d f(x_0) = f'(x_0)$ (et $d f(x_0)(h) = f'(x_0)\cdot h$).
Dans le cas des fonctions de plusieurs variables, on écrire la différentielle à l'aide des dérivées partielles.
Noter que $d f(x_0)$ est une application de $\R^n$ vers $\R$ (comme $f$), et donc $d f(x_0)(h)$ est un réel (pour chaque $h\in\R^n$).

On dira alors que si $f$ est différentiable au point $(x_0,y_0)$ si et seulement si $f$ admet un ***développement limité d'ordre $1$*** en ce point.
 Pour $f : \R^2 \to \R$, si $f$ est différentiable au point $(x_0,y_0)$, alors
$$f(x_0+h,y_0+k)=f(x_0,y_0)+h\frac{\partial f}{\partial x}(x_0,y_0)+k\frac{\partial f}{\partial y}(x_0,y_0)+o\left(\|(h,k)\|\right).$$

#### Continuité

Si $f$ est ***différentiable*** en $x_0 \in \R^n$, alors $f$ est ***continue*** en $x_0$.  La ***réciproque est fausse***

**Preuve**
Notons $g$ la fonction définie par $g(h)=\frac{f(x_0+h) - f(x_0) - d f(x_0)(h)}{\|h\|}$. Alors
$$f(x_0 + h)=f(x_0) + d f(x_0)(h) +\|h\|g(h)$$

et il est clair que $d f(x_0)(h)$ et $\|h\|g(h)$ tendent vers $0$ lorsque $h$ tend vers le vecteur nul. Donc la limite de $f$ en $x_0$ existe et vaut $f(x_0)$, et ainsi $f$ est continue en $x_0$.

#### Partielles

Si $f : \R^n \to \R$ est ***différentiable*** en $x_0 \in \R^n$, alors ses ***dérivées partielles existent*** et on a :
$$d f(x_0)(h) = \sum_{i=1}^n h_i \frac{\partial f}{\partial x_i}(x_0) = \langle \nabla f (x_0) \mid v \rangle$$

En particulier, lorsqu'elle existe, la différentielle est unique.

Pour **montrer** qu'une fonction est différentiable, on peut utiliser que la somme, le produit, l'inverse (d'une fonction ne s'annulant pas) et la composition de fonctions différentiables est différentiable. Sinon, il faut revenir à la définition. Par exemple, pour $f : \R^2 \to \R$ :

- tout d'abord, on calcule les dérivées partielles $\frac{\partial f}{\partial x}(x_0,y_0)$ et  $\frac{\partial f}{\partial y}(x_0,y_0)$,
- on écrit le  candidat à être la différentielle $\ell(h,k) = h \frac{\partial f}{\partial x}(x_0,y_0) + k \frac{\partial f}{\partial y}(x_0,y_0)$,
- il faut enfin prouver la limite, lorsque $\|(h,k)\| \to 0$ :
$$\frac{f(x_0+ h,y_0+k) - f(x_0,y_0) - \ell(h,k)}{\|(h,k)\|} \longrightarrow  0.$$

**Preuve**
Prouvons la formule pour deux variables.
Soit $f : \R^2 \to \R$ différentiable en $(x_0,y_0) \in \R^2$.
Soit $\ell(h,k) = ah + bk$ sa différentielle. Alors, par définition, lorsque $\|(h,k)\| \to 0$, on a :
$$\frac{f(x_0+ h,y_0+k) - f(x_0,y_0) - \ell(h,k)}{\|(h,k)\|} \longrightarrow 0$$
Pour $(h,k) = (t,0)$ avec $t>0$ et $t \to 0$, on a donc :
$$\frac{f(x_0+ t,y_0) - f(x_0,y_0) - t\ell(1,0)}{t} = \frac{f(x_0+ t,y_0) - f(x_0,y_0)}{t} - \ell(1,0) \longrightarrow  0$$
C'est exactement dire que
$$\frac{\partial f}{\partial x}(x_0,y_0) = \ell(1,0) = a.$$

Avec $(h,k) = (0,t)$, on prouve de même que
$$\frac{\partial f}{\partial y}(x_0,y_0) = \ell(0,1) = b.$$

Ainsi,
$$\ell(h,k) = h \frac{\partial f}{\partial x}(x_0,y_0) + k \frac{\partial f}{\partial y}(x_0,y_0).$$

#### Directionnelle

Soit $f : \R^n \to \R$ et $v \in \R^n$ un vecteur non nul. La **dérivée directionnelle** de $f$ en $x_0 \in \R^n$ suivant le vecteur $v$ est définie, si elle existe, par $$D_{v}f(x_0)= \lim_{t\to 0} \frac{f(x_0 + t v)-f(x_0)}{t}.$$

De façon générale, si le vecteur $v$ est un vecteur de la ***base canonique***, on retrouve une dérivée partielle.

Si $f$ est ***différentiable***, alors $f$ admet des dérivées partielles et des ***dérivées directionnelles dans toutes les directions***. La **réciproque est fausse** ; $D_v f(x_0) = d f (x_0) (v)$.

<!-->
**Gradient**
Le gradient est une autre façon de coder la différentielle.
Le ***gradient*** de $f$ en $x_0$ est le vecteur
$$\nabla f (x_0) =
\begin{pmatrix}
\dfrac{\partial f}{\partial x_{1}} (x_0)\\
\vdots \\
\dfrac{\partial f}{\partial x_n}(x_0)
\end{pmatrix}.$$
Nous reviendrons en détail sur le gradient et ses applications dans le chapitre Gradient -- Théorème des accroissements finis.
-->

**Résumé**
Lorsque $f$ est différentiable alors la différentielle, la dérivée directionnelle, et le gradient encodent la même information et sont reliés par les formules :
$$D_v f(x_0) = d f (x_0) (v) = \langle \nabla f (x_0) \mid v \rangle$$

**Interprétation géométrique**
Pour une fonction d'une variable, la dérivée en un point est la pente de la tangente au graphe de la fonction en ce point (le graphe est ici une courbe).
Pour une fonction de deux variables $(x,y) \mapsto f(x,y)$, les dérivées partielles indiquent les pentes au graphe de $f$ selon certaines directions (le graphe est ici une surface). Plus précisément :

- $\frac{\partial f}{\partial x} (x_0,y_0)$ est la pente au graphe de $f$ en $(x_0,y_0)$ suivant la direction de l'axe $(Ox)$.
  En effet, cette pente est celle de la tangente à la courbe $z = f(x,y_0)$ et est donnée par la dérivée de $x \mapsto f(x,y_0)$ en $x_0$.
- $\frac{\partial f}{\partial y} (x_0,y_0)$ est la pente au graphe de $f$ en $(x_0,y_0)$ suivant la direction de l'axe $(Oy)$.
- Plus généralement, si $v$ est un vecteur unitaire (i.e. de norme $1$) alors $D_vf(x_0,y_0)$ est la pente de la tangente suivant la direction $v$.

La dérivée directionnelle $D_vf$ indique la pente en un point d'une tranche dans la direction d'un vecteur $v$.

## Ordre 2

Soit $f : \R^2 \to \R$ une application différentiable. Les deux dérivées partielles $\frac{\partial f}{\partial x}$ et $\frac{\partial f}{\partial y}$ sont aussi des fonctions de $\R^2$ dans $\R$ ; supposons que ce soient aussi des applications différentiables.
Alors on peut calculer les dérivées partielles de $\frac{\partial f}{\partial x}$ :
$$\frac{\partial}{\partial x}\left(\frac{\partial f}{\partial x}\right)
\qquad \text{ et } \qquad
\frac{\partial}{\partial y}\left(\frac{\partial f}{\partial x}\right).$$
On peut aussi calculer les dérivées partielles de $\frac{\partial f}{\partial y}$ :
$$\frac{\partial}{\partial x}\left(\frac{\partial f}{\partial y}\right)
\qquad \text{ et } \qquad
\frac{\partial}{\partial y}\left(\frac{\partial f}{\partial y}\right).$$

On note ces dérivées partielles :
$$\frac{\partial ^2 f}{\partial x^2}
\qquad
\frac{\partial ^2 f}{\partial y\partial x}
\qquad
\frac{\partial ^2 f}{\partial x\partial y}
\qquad
\frac{\partial ^2 f}{\partial y^2}
$$
Il y a quatre dérivées partielles secondes à calculer, mais en général deux d'entre elles sont égales.

### Théorème de Schwarz

Le théorème de Schwarz dit que le résultat ne dépend pas de l'ordre dans lequel on effectue les dérivations.
Soit $f:U\subset \R^n\to \R$ une fonction de classe $\mathcal{C}^2$.
Pour tous $i,j  \in \{1,\dots ,n\}$, on a : $${\displaystyle \frac{\partial}{\partial x_i}\left(\frac{\partial f}{\partial x_j}\right)=\frac{\partial}{\partial x_j}\left(\frac{\partial f}{\partial x_i}\right)}$$
Alors, pour tout $x \in U$, $\partial^2f(x)$ est une application bilinéaire ***symétrique***.
Autrement dit, pour tout $(h,k)\in \R^n \times \R^n$, on a : $$\partial^2f(x)(h,k) = \partial^2f(x)(k,h).$$

### Hessienne

La matrice hessienne est la matrice des dérivées partielles d'ordre $2$.

Soit $f : \R^n \to \R$ une fonction de $n$ variables.
La **matrice hessienne** de $f$ en $x=(x_1,\ldots,x_n)$ est la matrice $n \times n$ :
$${\displaystyle H_f(x) = \left( \frac{\partial ^2f}{\partial x_i\partial x_j}(x) \right)_{1 \le i,j \le n}}$$
Pour une fonction de classe $\mathcal{C}^2$, d'après le théorème de Schwarz, c'est une ***matrice symétrique***.

### Différentiabilité seconde
<!--
### Applications linéaires
On note $\mathcal{L}(\R^n,\R^p)$ désigne l'ensemble des applications linéaires de $\R^n$ vers $\R^p$.
Par sa définition, la différentielle de $\partial f$ en $x$, que l'on écrit $\partial(\partial f)(x)$, est une application linéaire de $\R^n$ dans $\mathcal{L}(\R^n,\R)$. Autrement dit, on a
$$
\partial f : U \to \mathcal{L}(\R^n,\R) 
\qquad \text{ et } \qquad
\partial (\partial f) : U \to \mathcal{L} (\R^n,\mathcal{L}(\R^n,\R)).
$$
Mais elle s'identifie naturellement avec une application bilinéaire de $\R^n \times \R^n$ dans $\R$ grâce à la proposition suivante : $$\mathcal{L} (\R^n,\mathcal{L}(\R^n,\R)) \simeq \mathcal{L} (\R^n \times \R^n,\R)$$
***Demonstration*** :
si $L \in \mathcal{L} (\R^n,\mathcal{L}(\R^n,\R))$ alors, pour $h \in \R^n$, $L(h) \in \mathcal{L}(\R^n,\R)$, $k \in \R^n \mapsto L(h)(k) \in \R$.
L'application $(h,k) \mapsto L(h)(k)$ (que l'on note $L(h,k)$) est une application linéaire en $h$ et en $k$, donc bilinéaire en $(h,k)$.
-->
Cette section est beaucoup plus théorique et doit être passée lors d'une première lecture.
Soit $f : U \to \R$ une fonction $f$ définie sur un ouvert $U \subset \R^n$.
$f$ est dite **deux fois différentiable en $x_0 \in U$** :

- si elle est différentiable dans un voisinage ouvert $V_{x_0}$ de $x_0$,
- et si sa différentielle $\partial f : V_{x_0} \to \mathcal{L}(\R^n,\R)$ est différentiable en $x_0$.

On dit que $f$ est **deux fois différentiable sur $U$** si elle est différentiable en tout point de $U$.
La **différentielle seconde** d'une fonction $f: U \subset \R^n \to \R$ deux fois différentiable est l'application
$$\begin{array}{clll} \partial^2 f : & U & \rightarrow & \mathcal{L}(\R^n \times \R^n,\R) \\ & x & \mapsto & \partial^2 f(x) \end{array}$$
<!-->
définie par
$$\partial^2f(x)(h,k) = \partial(\partial f)(x)(h)(k) \qquad \text{ pour tout } (h,k)\in \R^n \times \R^n.$$
-->

## Fonctions de classe

Dans la pratique, les fonctions seront souvent de classe $\mathcal{C}^1$, ce qui implique la différentiabilité, et est plus facile à vérifier.
On dit que $f$ est de **classe $\mathcal{C}^1$** si les dérivées partielles $\frac{\partial f}{\partial x_i}$ existent et sont continues.

### Theoreme

Si $f$ est de ***classe $\mathcal{C}^1$***, alors $f$ est ***différentiable***. La ***réciproque est fausse***
<!-->
#### Négligeable

On rappelle la notation petit o.
\textbf{Notation.} Soit $g :\R^2\to \R$ une fonction définie au voisinage de $(0,0)$.
On dit que $g$ est **négligeable** par rapport à $\|(x,y)\|^n$ au voisinage de $(0,0)$ et on note $g=o\left(\|(x,y)\|^n\right)$ si
$$\lim_{(x,y)\to(0,0)}\frac{g(x,y)}{\|(x,y)\|^n}=0.$$
-->
**Preuve**
Soit $f$ une fonction de classe $\mathcal{C}^1$ au voisinage du point $(x_0,y_0)$ : elle admet donc des dérivées partielles continues au voisinage de $(x_0,y_0)$.
Pour $(h,k)\in \R^2$, on a
$$f(x_0+h,y_0+k)-f(x_0,y_0)=\big[f(x_0+h,y_0)-f(x_0,y_0)\big] +\big[f(x_0+h,y_0+k)-f(x_0+h,y_0)\big].$$

La fonction $x\mapsto f(x,y_0)$ est dérivable en $x_0$, donc
$$f(x_0+h,y_0)-f(x_0,y_0)=h\frac{\partial f}{\partial x}(x_0,y_0)+ h\epsilon_1(h)\text{ avec }\lim _{h\to 0}\epsilon _1(h)=0$$

Fixons $h$ : la fonction $y\mapsto f(x_0+h,y)$ est dérivable autour de $y_0$.
Appliquons le théorème des accroissements finis à cette fonction d'une variable sur l'intervalle $[y_0,y_0+k]$ ;
$$\exists \ell \in ]0,k[;f(x_0+h,y_0+k)-f(x_0+h,y_0) = k \frac{\partial f}{\partial y}(x_0+h,y_0+\ell).$$

Le réel $\ell$ dépend de $k$ et de $h$ et tend vers $0$ lorsque $k$ tend vers $0$ (uniformément en $h$).
Or, $\frac{\partial f}{\partial y}$ est continue au point $(x_0,y_0)$, donc $\frac{\partial f}{\partial y}(x_0+h,y_0+\ell)=\frac{\partial f}{\partial y}(x_0,y_0)+\epsilon_2(h,k)$ avec $\lim _{(h,k)\to (0,0)}\epsilon_2(h,k)=0$, d'où
$$f(x_0+h,y_0+k)-f(x_0+h,y_0)=k\frac{\partial f}{\partial y}(x_0,y_0)+k\epsilon _2(h,k).$$

Ainsi,
$$f(x_0+h,y_0+k)-f(x_0,y_0)=h\frac{\partial f}{\partial x}(x_0,y_0)+k\frac{\partial f}{\partial y}(x_0,y_0)+h\epsilon _1(h)+k\epsilon _2(h,k).$$

Or
$$\frac{|h\epsilon _1(h)+k\epsilon _2(h,k)|}{\|(h,k)\|}\le |\epsilon _1(h)|+|\epsilon _2(h,k)| \xrightarrow[(h,k)\to(0,0)]{} 0,$$
donc
$$f(x_0+h,y_0+k)-f(x_0,y_0)=d f (x_0,y_0)(h,k)+o\left(\|(h,k)\|\right).$$
