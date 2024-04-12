# Optimisation M1 CC1

- [Optimisation M1 CC1](#optimisation-m1-cc1)
  - [1 Trouver l'ouvert](#1-trouver-louvert)
  - [2 Continuité](#2-continuité)
  - [3 Calcule de limite](#3-calcule-de-limite)
  - [3 Changement variable](#3-changement-variable)
  - [4 Dérivé](#4-dérivé)

## 1 Trouver l'ouvert

Trouver un ouvert U contenant l’origine tel que $0.999 < f (x, y) < 1.001$ pour : $\forall (x, y) ∈ U; f(x, y) = \frac{1 + x}{1 + y}$
$$
\begin{align*}
0.999 < &f (x, y) < 1.001\\
\epsilon = 0.001, 1-\epsilon < &\frac{1 + x}{1 + y} < 1+\epsilon\\
-\epsilon<&\frac{x-y}{1 + y}< \epsilon\\
\text{si }y>-1,-\epsilon(1+y)+y<&x<\epsilon(1+y)+y\\
y(1+\epsilon)-\epsilon<&x<y(1+\epsilon)+\epsilon\\
\text{si }y<-1,y(1+\epsilon)-\epsilon>&x>y(1+\epsilon)+\epsilon\\
-1*(\vert y\vert (1+\epsilon)+\epsilon)>&x>-1*(\vert y\vert (1+\epsilon)-\epsilon)\\
y(1+\epsilon)+\epsilon>&x>y(1+\epsilon)-\epsilon
\end{align*}\\
U=\{x,y\in\R\vert\epsilon=10^{-3},x\in[y(1+\epsilon)\pm\epsilon]\}
$$

## 2 Continuité

Soit $f : \R^n\to\R$  une fonction continue au point $x=(\alpha_i)_{i\in[1,n]}$
Montrer que la fonction partielle $f_i(t) = f(\alpha _1,\dots , \alpha _{i−1}, t, \alpha _{i+1},\dots , \alpha _n)$ est continue en $\alpha _i$.
$$
\forall t\in\R,\exist\delta>0,\forall x\in\R;\alpha_i-t<\delta\\
\text{Soit }\Delta=(\beta _1,\dots , \beta _{i−1}, \delta, \beta _{i+1},\dots , \beta _n);\forall i,\beta_i=0\\
\Rightarrow \text{par continuité de f : }\lim _{\Delta\to 0}f(x+\Delta)=f(x)
$$

## 3 Calcule de limite

Sachant que la limite de $g(x,y)=\frac{1+x}{1+y}$ en $(0,0)$ est $1$, calculer la limite des fonctions suivantes en
$(0, 0)$ :

1. $f(x,y)=\frac{1+x}{1+y}+x²+y²$ : $f$ est une somme de fonction qui admet une limite en $(0,0)$ alors $\lim _{x,y\to(0,0)}f(x,y)=1+0+0=1$
1. $f(x,y)=\frac{1+y}{1+x}$ : $f(x,y)=f(y,x)$ et $\lim _{x,y\to(0,0)}f(y,x)=1$ alors $\lim _{x,y\to(0,0)}f(x,y)=1$
1. $f(x,y)=\sin(x y)\frac{1+x}{1+y}$ :  $f$ est un produit de fonction qui admet une limite en $(0,0)$ alors $\lim _{x,y\to(0,0)}f(x,y)=0*1=0$
1. $f(x,y)=\log(\frac{1+x}{1+y})$ : $f$ est une conposition de fonction et le logarithme est continue en $1$ alors $\lim _{x,y\to(0,0)}f(x,y)=\log(1)=0$

## 3 Changement variable

Sachant que $\forall t>0,\log(t)\leq t−1$, calculer la limite de $f(x,y)=\frac{\log(1+xy)}{1+x²+y^4}$ en $(0, 0)$.

$$
\text{Soit } E=\{x,y\in\R\vert xy\leq -1\}\\
\forall x,y\in\R\setminus\{E\},\exist a,b,t\in\R ^3; (x,y)=(at,bt)\\
\begin{align*}
f(at,bt)&=\frac{\log(1+abt²)}{1+(at)²+(bt)^4}\\
&\leq\frac{abt²}{1+a²t^2+b^4t^4}\\
&\leq\frac{abt²}{1+t^2(a²+b^4)}\\
&\to _{t\to 0} 0
\end{align*}
$$

Soit $f(x,y)=\frac{\sin(x^2−y^2)}{x^2+y^2}$
Soit $\gamma(t) = (at, bt)$ où $(a, b)\in\R^2\setminus(0,0)$ est fixé.
Calculer la limite de $(f\circ\gamma)(t)$ en $0$. 
f admet-elle une limite en (0, 0) ?
f est-elle prolongeable par continuité en (0, 0) ?

$$
f(at,bt)=\frac{\sin((at)^2−(bt)^2)}{(at)^2+(bt)^2}
$$

Soit $f (x, y) =\frac{xy^3}{x^2+2y^2}$
f admet-elle une limite en (0,0) ?
f est-elle prolongeable par continuité en (0, 0) ?

$$
\forall x,y\in\R,\exist a,b,t\in\R ^3; (x,y)=(at,bt)\\
\begin{align*}
f(at,bt)&=\frac{at*b^3t^3}{a²t^2+2b²t^2}\\
&=\frac{ab^3t^4}{t^2(a²+2b²)}\\
&=\frac{ab^3t^2}{a²+2b²}\text{ continue}\\
&\to _{t\to 0} 0
\end{align*}
$$

## 4 Dérivé
Montrer que la fonction $f(x,y)=\frac{y^2}{x}$ si $x\neq 0$, $f(0,y) = y$ admet une
dérivée directionnelle suivant tout vecteur $v(h,k)$ au point $( 0 , 0)$, mais n’est pas continue en $(0 , 0)$.

$$
D_{(h,k)}(x,y)=h\frac{\partial f}{\partial x}+v\frac{\partial f}{\partial y}\\
=\frac{-hy²}{x²}+\frac{2vy}{x}\\
f(x+h,y+k)=\frac{(y+k)^2}{x+h}\\
\forall a,b\neq 0², \\
\frac{f(0,bt)-f(0,0)}{t}=\frac{bt-0}{t}=b\\
\frac{f(at,bt)-f(0,0)}{t}=\frac{t²b^2-0}{t²a}=\frac{b^2}{a}
$$