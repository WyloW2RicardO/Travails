# Contrôle Continu

## Exercice1

### SEV

Montrer que $F$ & $G$ sont des sev de $\R^3$

- $F = \{(x, y, z) \in \R^3 , x – y – z = 0\}$
  - $0_3 \in F : 0 - 0 - 0 = 0$
  - $X + X' \in F : \forall X, X' \in \R^3 \times \R^3; X+X'=(x_0+x_0', x_1+x_1', x_2+x_2'), x_0+x_0' - (x_1+x_1') - (x_2+x_2') = x_0 - x_1 - x_2 + x_0' -x_1'+x_2' = 0 + 0 = 0$
  - $\lambda.X \in F : \forall \lambda,X \in \R \times \R^3; \lambda.X = (\lambda.x_0, \lambda.x_1, \lambda.x_2), \lambda.x_0' - \lambda.x_1 - \lambda.x_2 = \lambda.(x_0 - x_1 - x_2) = \lambda.0 = 0$
- $G = \{(x, y, z) \in \R^3 , y = z = 0\}$
  - $0_3 \in G : 0 = 0 = 0$
  - $X + X' \in F : \forall X, X' \in \R^3 \times \R^3; X+X'=(x_0+x_0', x_1+x_1', x_2+x_2'), x_1+x_1' = x_2+x_2' = 0+0 = 0$
  - $\lambda.X \in F : \forall \lambda,X \in \R \times \R^3; \lambda.X = (\lambda.x_0, \lambda.x_1, \lambda.x_2), \lambda.x_1 = \lambda.x_2 = \lambda.0 = 0$

## Supplémentaire

Montrer que $F$ et $G$ sont supplémentaires.

- $F \cap G = \{O_3\} : X \in G ; X = (x_0, 0, 0)$ et $X \in F ; x_0 = 0$ alors $X=0_3$
- $F + G = \R^3$ : Soit $x,y,z \in \R^3$. Si nous prenons $(x,x,x) \in F$ et $(0,y−x,z−x) \in G$, alors $(x,x,x)+(0,y−x,z−x)=(x,y,z)$.

## Vecteur

Soient dans $\R^4$ les vecteurs $V_1=(1,2,3,4)$ et $V_2=(1,-2,-3,-4)$.
peut-on trouver $x$ et $y$ pour que $V_3=(x,1,y,1) \in Vect(V1, V2)$ ?

- $V_3 = a.V_1 + b.V_2$
- $\begin{bmatrix} x \\ 1 \\ y\end{bmatrix}=\begin{bmatrix} 1 & 1 \\ 2 & -2 \\ 3 & -3\end{bmatrix}.\begin{bmatrix} a \\ b  \end{bmatrix}$
  - $a=\frac{1}{2}+b$
  - $x=a+b=\frac{1}{2}+2b$
  - $y=3a-3b=\frac{3}{2}+3.2b-3b=\frac{3}{2}+3b$

## Justifier

parmi les ensemble suivants, reconatre ceux qui sont des sous-espace vectoriels

- $\{(x,y,z)\in\R^3|x+y=0\}$
  - $0_3$
  - $x+x'+y+y'=x+y+x'+y'=0+0=0$
  - $\lambda.x+\lambda.y=\lambda(x+y)=\lambda.0=0$
- $\{(x,y,z,t)\in\R^4|x=t$ & $y=z\}$
  - $0_4$
  - $x+x'=t+t'$ & $y+y'=z+z'$
  - $\lambda.x=\lambda.t$ & $\lambda.y=\lambda.z$
- $\{(x,y,z)\in\R^3|z=1\}$
  - $1$ n'est pas absorbant
- $\{(x,y)\in\R^2|x^2+xy\geq0\}$
  - $(1,1)$ et $(-1,-1), (1-1)^2-1=-1\leq0$
- $\{(x,y)\in\R^2|x^2+y^2\geq0\}$
  - $0_2$
  - somme de deux nombre positif
  - par factorisation du scalare
- $\{f\in\mathfrak{F}(\R,\R)|f(0)=1\}$
  - $\forall\lambda\in\R, \lambda.f(0)=\lambda$
- $\{f\in\mathfrak{F}(\R,\R)|f(1)=0\}$
  - fonction null
  - $f(1)+g(1)=0+0$
  - $\forall\lambda\in\R, \lambda.f(1)=0$
- $\{f\in\mathfrak{F}(\R,\R)|f$ croissante $\}$
  - fonction identiter
  - somme des fonction croissante reste croissante
  - un sacalaire multiplier par une fonction croissante reste croissante
- $\{(u_n)_{n\in\N_+}|u_n\to 0\}$
  - suite null
  - somme de suite tens ver la somme des limmite
  - stable par le produit par un scalaire par absoption de 0
