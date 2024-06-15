# Optimisation M1 CC1

- [Optimisation M1 CC1](#optimisation-m1-cc1)
  - [1 Trouver l’ouvert](#1-trouver-louvert)
  - [2 Continuités](#2-continuités)
  - [3 Calcule de limite](#3-calcule-de-limite)
  - [4 Changement variable](#4-changement-variable)
  - [5 Dérivés](#5-dérivés)

## 1 Trouver l’ouvert

Trouve un ouvert U contenant l’origine tel que $0.999 < f (x, y) < 1.001$ pour : $\forall (x, y) ∈ U; f(x, y) = \frac{1 + x}{1 + y}$

- $0.999 < f (x, y) < 1.001$
- $\epsilon = 0.001, 1-\epsilon < \frac{1 + x}{1 + y} < 1+\epsilon$
- $-\epsilon<\frac{x-y}{1+y}<\epsilon$
- si $y > -1,-\epsilon(1+y)+y < x < \epsilon(1+y)+y$
- $y(1+\epsilon)-\epsilon < x < y(1+\epsilon)+\epsilon$
- $\text{si }y < -1,y(1+\epsilon)-\epsilon > x >y(1+\epsilon)+\epsilon$
- $1*(\vert y\vert (1+\epsilon)+\epsilon)>x>-1*(\vert y\vert (1+\epsilon)-\epsilon)$
- $y(1+\epsilon )+\epsilon > x > y(1+\epsilon )-\epsilon$
- $U=\{ x,y \in \R \vert \epsilon =10^{-3},x\in [ y(1 + \epsilon )\pm \epsilon ] \}$

## 2 Continuités

Soit $f : \R ^n\to \R$  une fonction continue au point $x = ( \alpha _i)_{i \in [1,n]}$
Montrer que la fonction partielle $f_i(t) = f(\alpha _1,\dots , \alpha _{i−1}, t, \alpha _{i+1},\dots , \alpha _n)$ est continue en $\alpha _i$.

- $\forall t \in \R ,\exists \delta >0,\forall x \in \R ;\alpha _i-t < \delta$
- $\text{Soit }\Delta=(\beta _1,\dots , \beta _{i−1}, \delta, \beta _{i+1},\dots , \beta _n);\forall i,\beta _i=0$
- $\text{par continuité de f : }\lim _{\Delta \to 0}f(x+\Delta )=f(x)$

## 3 Calcule de limite

Sachant que la limite de $g(x,y)=\frac{1+x}{1+y}$ en $(0,0)$ est $1$, calculer la limite des fonctions suivantes en
$(0, 0)$ :

1. $f(x,y)=\frac{1+x}{1+y}+x²+y²$ : $f$ est une somme de fonction qui admet une limite en $(0,0)$ alors $\lim _{x,y\to(0,0)}f(x,y)=1+0+0=1$
2. $f(x,y)=\frac{1+y}{1+x}$ : $f(x,y)=f(y,x)$ et $\lim _{x,y\to(0,0)}f(y,x)=1$ alors $\lim _{x,y\to(0,0)}f(x,y)=1$
3. $f(x,y)=\sin(x y)\frac{1+x}{1+y}$ :  $f$ est un produit de fonction qui admet une limite en $(0,0)$ alors $\lim _{x,y\to(0,0)}f(x,y)=0*1=0$
4. $f(x,y)=\log(\frac{1+x}{1+y})$ : $f$ est une conposition de fonction et le logarithme est continue en $1$ alors $\lim _{x,y\to(0,0)}f(x,y)=\log(1)=0$

## 4 Changement variable

Sachant que $\forall t>0,\log(t)\leq t−1$, calculer la limite de $f(x,y)=\frac{\log(1+xy)}{1+x²+y^4}$ en $(0, 0)$.

$\text{Soit } E = \{ x,y\in \R \vert xy\leq -1\}$

- $\forall x,y\in\R\setminus\{E\},\exists a,b,t\in\R ^3; (x,y)=(at,bt)$
- $f(at,bt)=\frac{\log(1+abt²)}{1+(at)²+(bt)^4}$
- $\leq\frac{abt²}{1+a²t^2+b^4t^4}$
- $\leq\frac{abt²}{1+t^2(a²+b^4)}$
- $\to _{t\to 0} 0$

Soit $f(x,y)=\frac{\sin(x^2−y^2)}{x^2+y^2}$
Soit $\gamma(t) = (at, bt)$ où $(a, b)\in\R^2\setminus(0,0)$ est fixé.
Calculer la limite de $(f\circ\gamma)(t)$ en $0$.
f admet-elle une limite en (0, 0) ?
f est-elle prolongeable par continuité en (0, 0) ?

- $f(at,bt)=\frac{\sin((at)^2−(bt)^2)}{(at)^2+(bt)^2}$
- $=\frac{(at)^2−(bt)^2}{(at)^2+(bt)^2}$
- $=\frac{a^2−b^2}{a^2+b^2}$

Si $a \neq b \lim_{t\to 0}f(t)≠0$ et si $a=b, \lim{t\to 0}f(t)=0$ $f$ n’a pas de limite en $(0, 0)$, elle n’est donc pas prolongeable par continuité en $(0 , 0)$.

Soit $f (x, y) =\frac{xy^3}{x^2+2y^2}$
f admet-elle une limite en $(0,0)$ ?
f est-elle prolongeable par continuité en $(0, 0)$ ?

$\forall x,y\in\R,\exist a,b,t\in\R ^3; (x,y)=(at,bt)$

- $f(at,bt)=\frac{at*b^3t^3}{a²t^2+2b²t^2}$
  - $=\frac{ab^3t^4}{t^2(a²+2b²)}$
  - $=\frac{ab^3t^2}{a²+2b²}\text{ continue}$
  - $\to _{t\to 0} 0$

En posant $f(0,0) = 0 = \lim_{(x,y)\to (0,0)} f (x,y)=0$ , on prolonge $f$ par continuité en $(0, 0)$.

## 5 Dérivés

Montrer que la fonction $f(x,y)=\frac{y^2}{x}$ si $x\neq 0$, $f(0,y) = y$ admet une
dérivée directionnelle suivante tout vecteur $v(h,k)$ au point $( 0 , 0)$, mais n’est pas continue en $(0 , 0)$.

$$
D_{(h,k)}(x,y)=h\frac{\partial f}{\partial x}+v\frac{\partial f}{\partial y}\\
=\frac{-hy²}{x²}+\frac{2vy}{x}\\
f(x+h,y+k)=\frac{(y+k)^2}{x+h}\\
\forall a,b\neq 0², \\
\frac{f(0,bt)-f(0,0)}{t}=\frac{bt-0}{t}=b\\
\frac{f(at,bt)-f(0,0)}{t}=\frac{t²b^2-0}{t²a}=\frac{b^2}{a}
$$

ce qui montre que $f$ est dérivable en $(0,0)$ selon le vecteur (a,b) et que $D_f(a,b) (0,0) = b^2 /a$.
Si $a = 0$, on a $f(0,tb) = tb$ pour tout $t \in R$ , donc f dérivable en $(0,0)$ selon le vecteur $(a , b)$ et
$D_f(a,b)(0,0) = b$.
Cependant, $f$ n’est pas continue en $(0 , 0)$ car si $x = y$ , $f(x,y) = 1$ et $f(0,y) = y$. $f$ n’a donc pas de limite en $(0,0)$ (car dans un cas la limite est $1$ et dans l’autre cas c’est $0$).
On peut également faire le raisonnement suintant : $f$ n’est pas continue en $(0 , 0)$ car pour tout $n\in\N^*, f(1/n^3 , 1/n) = n \to +\infty$ lorsque $n \to +\infty$ , alors que $(1/n^3 , 1/n) \to(0, 0)$.
