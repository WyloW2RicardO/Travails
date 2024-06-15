# Optimisation M1 CC2

- [Optimisation M1 CC2](#optimisation-m1-cc2)
  - [1 Taylor](#1-taylor)
  - [2 Lagrange](#2-lagrange)

## 1 Taylor

Pour chaque fonction ci-dessous, chercher le(s) point(s) critique(s) et la nature
(minimum/ maximum/ point-selle) de chacun d’eux.

1. $f(x,y) = x^4 + y^3 – 4y – 2$
   1. $f \in C ^ \infty$ par somme et produit de fonction continue
   2. $J_f(x,y)=\begin{pmatrix}4x^3\\3y^2-4\end{pmatrix}=\begin{pmatrix}4x^3\\\sqrt{3}(y-\frac{2}{\sqrt{3}})(y+\frac{2}{\sqrt{3}})\end{pmatrix}$
   3. $J_f(x,y) = 0^{[2]} \Rightarrow \begin{Bmatrix} x=0 \\ |y| = \frac{2}{\sqrt{3}} \end{Bmatrix} \Rightarrow PC = \{(0,-\frac{2}{\sqrt{3}}), (0,\frac{2}{\sqrt{3}})\}$
   4. $H_f(x,y)=\begin{pmatrix} 12x^2 & 0 \\ 0 & 6y \end{pmatrix} \Rightarrow \det H_f(x,y) = 72yx^2$
   5. Soit $(v,k)\in\R^2,f(x_0+v,y_0+k)-f(x_0,y_0)=vj_1+kj_2+\frac{1}{2}(v^2h_{1,1}+2vkh_{1,2}+k^2h_{2,2})+o(\Vert(v,k)\Vert^2)$ car i
   6. $(x_0,y_0) = (0,-\frac{2}{\sqrt{3}});f(v,k-\frac{2}{\sqrt{3}})-\frac{20}{3\sqrt{3}}=0+0+\frac{1}{2}(0+0-6\frac{2}{\sqrt{3}}k^2)+o(\Vert(v,k)\Vert^2)$
      1. $g(k)=\frac{-6}{\sqrt{3}}k^2\leq 0$
      2. Ainsi $(0,\frac{-2}{\sqrt{3}})$ est un maxima local
   7. $(x_0,y_0) = (0,\frac{2}{\sqrt{3}});f(v,k+\frac{2}{\sqrt{3}})-\frac{4}{\sqrt{3}}=0+0+\frac{1}{2}(0+0+6\frac{2}{\sqrt{3}}k^2)+o(\Vert(v,k)\Vert^2)$
      1. $g(k)=\frac{6}{\sqrt{3}}k^2 \geq 0$
      2. Ainsi $(0,-1)$ est un minima local
2. $f(x,y) = x^3 + xy^2 – x^2 y – y^3$
   1. $f \in C ^ \infty$ par somme et produit de fonction continue
   2. $J_f(x,y)=\begin{pmatrix}3x^2-2xy+y^2\\-3y^2+2yx-x^2\end{pmatrix}$
      - $=\begin{pmatrix}3(x-\frac{1}{3}y)^2+y^2(1-\frac{1}{3}^2)\\-3(y-\frac{1}{3}x)^2+x^2(\frac{1}{3}^2-1)\end{pmatrix}$
      - $=3\begin{pmatrix}(x-y(\frac{1}{3}-1+\frac{1}{3}))(x-y(\frac{1}{3}+1-\frac{1}{3}))\\-(y-x(\frac{1}{3}-\frac{1}{3}+1))(y-x(\frac{1}{3}+\frac{1}{3}-1))\end{pmatrix}$
      - $=3\begin{pmatrix}(x+y\frac{1}{3})(x-y)\\-(y-x)(y+x\frac{1}{3})\end{pmatrix}$
   3. $J_f(x,y) = 0^{[2]}$
      1. $\Rightarrow \begin{Bmatrix}3x=-y\text{ ou }x=y\\3y=-x\text{ ou }y=x\end{Bmatrix}\Rightarrow PC = \{(0,0)\}$
   4. $H_f(x,y)=\begin{pmatrix} 6x-2y & 2y-2x \\ 2y-2x & 2x-6y \end{pmatrix}=2\begin{pmatrix} 3x-y & y-x \\ y-x & x-3y \end{pmatrix}$
      1. $\Rightarrow \det H_f(x,y)=4((3x-y)(x-3y)-(y-x)^2)$
         - $=4(3x^2-9xy-xy+3y^2-y^2+2xy-x^2)$
         - $=8(x^2-4xy+y^2)$
         - $=8((x-2y)^2+y^2(1-2^2))$
         - $=8(x-y(2-1+2))(x-y(2+1-2))$
         - $=8(x-3y)(x-y)$
   5. Soit $(v,k)\in\R^2,f(x_0+v,y_0+k)-f(x_0,y_0)=vj_1+kj_2+\frac{1}{2}(v^2h_{1,1}+2vkh_{1,2}+k^2h_{2,2})+o(\Vert(v,k)\Vert^2)$ car i
   6. Soit $t\in\R;(x_0,y_0) = (0,0),f(v,k)-0=0+0+\frac{1}{2}(0+0+0)+o(\Vert(v,k)\Vert^2)$ alors c'est un point selle

## 2 Lagrange

En utilisant les multiplicateurs de Lagrange, chercher les extremums liés dans les 3 cas vivants :

1. Trouver le point du cercle de rayon 1 centré à l’origine le plus éloigné du point $(3 , 4)$.
   1. $(x-x_0)^2+(y-y_0)^2=r^2$ equoition du cercle
      1. $f(x,y)=(x-3)^2+(y-4)^2\in C^\infty$ cercle centré au point
      2. $g(x,y)=x^2+y^2-1\in C^\infty$ cercle de rayon 1 centré à l’origine
   2. $J_f(x,y)=\begin{pmatrix}2x-6\\2y-8\end{pmatrix}=2\begin{pmatrix}x-3\\y-4\end{pmatrix}\quad\text{ et }\quad J_g(x,y)=\begin{pmatrix}2x\\2y\end{pmatrix}=2\begin{pmatrix}x\\y\end{pmatrix}$
   3. Soit $\lambda\in\R, J_f(x,y)=\lambda J_g(x,y)\Leftrightarrow\begin{Bmatrix}x_\lambda=\frac{3}{1-\lambda}\\y_\lambda=\frac{4}{1-\lambda}\end{Bmatrix}$ theoreme des contraintes
   4. $g(x_\lambda,y_\lambda)=\frac{9}{(1-\lambda)^2}+\frac{16}{(1-\lambda)^2}-1=\frac{25}{(1-\lambda)^2}-1=0\Leftrightarrow\lambda=\begin{Bmatrix}-4\\6\end{Bmatrix}\Leftrightarrow(x_\lambda,y_\lambda)=\begin{Bmatrix}(\frac{3}{5},\frac{4}{5})\\(\frac{-3}{5},\frac{-4}{5})\end{Bmatrix}$ point le plus pres
   5. $h(t)=\frac{y_0-y_\lambda}{x_0-x_\lambda}t+b=\frac{4}{3}t\quad$ $b=0$ car $h(3)=4$
   6. Ainsi $(x_2,y_2)=(\frac{-3}{5},\frac{-4}{5})$ est le point le plus eloigné
2. Calculer la distance entre le point $(x_0 , y_0 , z_0 )$ et le plan d’équation $ax + by + cz + d = 0$ où $(a, b, c) \neq (0, 0, 0)$.
   1. $f(x,y,z)=(x-x_0)^2+(y-y_0)^2+(z-z_0)^2\in C^\infty$
   2. $g(x,y,z)=ax+by+cz\in C^\infty$
   3. $J_f(x,y,z)=\begin{pmatrix}2x-2x_0\\2y-2y_0\\2z-2z_0\end{pmatrix}=2\begin{pmatrix}x-x_0\\y-y_0\\z-z_0\end{pmatrix}\quad\text{ et }\quad J_g(x,y,z)=\begin{pmatrix}a\\b\\c\end{pmatrix}$
   4. Soit $\lambda\in\R, J_f(x,y,z)=\lambda J_g(x,y,z)\Leftrightarrow\begin{Bmatrix}2x_\lambda=a\lambda+x_0\\2y_\lambda=b\lambda+y_0\\2z_\lambda=c\lambda+z_0\end{Bmatrix}$
   5. $g(x_\lambda,y_\lambda,z_\lambda)=a(\frac{a\lambda+x_0}{2})+b(\frac{b\lambda+y_0}{2})+c(\frac{c\lambda+z_0}{2})=\frac{\lambda}{2}(a^2+b^2+c^2)+\frac{1}{2}(ax_0+by_0+cz_0)=0$
   6. Ainsi avec $\lambda=-\frac{ax_0+by_0+cz_0}{a^2+b^2+c^2}, (x_\lambda,y_\lambda,z_\lambda)$ est le point du plan le plus proche du point $(x_0 , y_0 , z_0 )$ de distance $\lambda\sqrt{a^2+b^2+c^2}$ selon la norme euclidienne
3. On considère la fonction $f : \R^2 \to \R : (x,y) \to x^3 + y^3$.
   1. Montrer qu’elle ne possède aucun extremum.
      1. $f\in C^\infty$
      2. $J_f(x,y)=\begin{pmatrix}3x^2\\3y^2\end{pmatrix}=3\begin{pmatrix}x^2\\y^2\end{pmatrix}$
      3. $J_f(x,y) = 0^{[2]}\Rightarrow\begin{Bmatrix}x=0\\y=0\end{Bmatrix}\Rightarrow PC = \{(0,0)\}$
      4. $H_f(x,y)=\begin{pmatrix} 6x & 0 \\ 0 & 6y \end{pmatrix}=6\begin{pmatrix} x & 0 \\ 0 & y \end{pmatrix}\Rightarrow \det H_f(x,y)=36xy$
      5. Soit $(v,k)\in\R^2,f(x_0+v,y_0+k)-f(x_0,y_0)=vj_1+kj_2+\frac{1}{2}(v^2h_{1,1}+2vkh_{1,2}+k^2h_{2,2})+o(\Vert(v,k)\Vert^2)$ car a
      6. Soit $(x_0,y_0) = (0,0),f(x_0+v,y_0+k)=o(\Vert(v,k)\Vert^2)$
      7. Ainsi $(0,0)$ est alors un point selle
   2. Déterminer ses extremums liés avec la contrainte $g(x,y) = x^2 + y^2 - 1 = 0$.
      1. $J_g(x,y)=\begin{pmatrix}2x\\2y\end{pmatrix}$
      2. Soit $\lambda\in\R^+, J_f(x,y)=\lambda J_g(x,y)\Leftrightarrow\begin{Bmatrix}x_\lambda=\frac{2}{3}\lambda\\y_\lambda=\frac{2}{3}\lambda\end{Bmatrix}$
      3. $g(x_\lambda,y_\lambda)=\frac{4}{9}\lambda^2+\frac{4}{9}\lambda^2-1=\frac{8}{9}\lambda^2-1$
      4. $g(xλ,yλ)=0\Leftrightarrow\lambda=\frac{9}{8}$
      5. ...
