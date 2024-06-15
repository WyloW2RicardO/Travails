# Fondement Matriciel


## Exo 1

$A=\begin{pmatrix}1&0&1\\-1&0&2\\0&1&-1\end{pmatrix}$

montrer $A^3-3A+3I =0$

- $A^2=\begin{pmatrix}1&0&1\\-1&0&2\\0&1&-1\end{pmatrix}\begin{pmatrix}1&0&1\\-1&0&2\\0&1&-1\end{pmatrix}=\begin{pmatrix}1&1&0\\-1&2&-3\\-1&-1&3\end{pmatrix}$
- $A^3=\begin{pmatrix}1&1&0\\-1&2&-3\\-1&-1&3\end{pmatrix}\begin{pmatrix}1&0&1\\-1&0&2\\0&1&-1\end{pmatrix}=\begin{pmatrix}0&0&3\\-3&-3&6\\0&3&-6\end{pmatrix}$
- $A^3-3A=\begin{pmatrix}0&0&3\\-3&-3&6\\0&3&-6\end{pmatrix}-\begin{pmatrix}3&0&3\\-3&0&6\\0&3&-3\end{pmatrix}=\begin{pmatrix}-3&0&0\\0&-3&0\\0&0&-3\end{pmatrix}$
- $A^3-3A+3I=\begin{pmatrix}-3&0&0\\0&-3&0\\0&0&-3\end{pmatrix}+\begin{pmatrix}3&0&0\\0&3&0\\0&0&3\end{pmatrix}=0$

$A$ est inversible

- $A^3-3A+3I=0$
- $A(\frac{1}{3}A^2-I)=I$
- $A^{-1}=\frac{1}{3}A^2-I=\frac{1}{3}\begin{pmatrix}0&1&0\\-1&1&-3\\-1&-1&2\end{pmatrix}$

Trouver $X\in\R^3$ veteur colonne des $x_i$ telle que $Y=\begin{pmatrix}-1\\5\\1\end{pmatrix}=AX$

- $X=\frac{1}{3}\begin{pmatrix}0&1&0\\-1&1&-3\\-1&-1&2\end{pmatrix}\begin{pmatrix}-1\\5\\1\end{pmatrix}$
- $X=\begin{pmatrix}5\\3\\-2\end{pmatrix}$



## Exo 2

$A=\begin{pmatrix}1&0&-1\\0&1&0\\-1&1&1\end{pmatrix}$
montrer $A^3-3A^2+2A=0$

- $A^2=\begin{pmatrix}1&0&-1\\0&1&0\\-1&1&1\end{pmatrix}\begin{pmatrix}1&0&-1\\0&1&0\\-1&1&1\end{pmatrix}=\begin{pmatrix}2&-1&-2\\0&1&0\\-2&2&2\end{pmatrix}$
- $A^3=\begin{pmatrix}2&-1&-2\\0&1&0\\-2&2&2\end{pmatrix}\begin{pmatrix}1&0&-1\\0&1&0\\-1&1&1\end{pmatrix}=\begin{pmatrix}4&-3&-4\\0&1&0\\-4&4&4\end{pmatrix}$
- $A^3-3A^2=\begin{pmatrix}4&-3&-4\\0&1&0\\-4&4&4\end{pmatrix}+3\begin{pmatrix}-2&1&2\\0&-1&0\\2&-2&-2\end{pmatrix}=\begin{pmatrix}-2&0&2\\0&-2&0\\2&-2&-2\end{pmatrix}=-2A$
- $A^3-3A^2+2A=0$

$A$ est inversible

- $A^3-3A^2+2A=0$
- $A^2-3A=-2I$
- $A(A-3I)=-2I$
- $A^{-1}=\frac{1}{2}(3I-A)=\frac{1}{2}\begin{pmatrix}2&0&1\\0&2&0\\1&-1&2\end{pmatrix}$

Trouver $X$ telle que $Y=\begin{pmatrix}-1\\5\\1\end{pmatrix}=AX$

- $X=\frac{1}{2}\begin{pmatrix}2&0&1\\0&2&0\\1&-1&2\end{pmatrix}\begin{pmatrix}-1\\5\\1\end{pmatrix}$
- $X=\begin{pmatrix}-1\\10\\-4\end{pmatrix}$

## Exo 3

on considère  les matrices :
$A=\begin{pmatrix}0&-1&1\\1&2&-3\\1&1&-2\end{pmatrix}$ et $P=\begin{pmatrix}1&1&0\\1&-1&1\\1&0&1\end{pmatrix}$
1. Montre moi que $P$ est inversible
   - $det(P)=1.-1.1+1.1.1+1.0.0-(0.-1.1+1.1.1+1.1.0)$ règle de Sarrus
   - $det(P)=-1+1-1=-1$
   - $det(P)\neq 0$ donc $P$ est inversible
2. Calcule $P^{-1}$
   - $P^{-1}=\frac{^tCof(P)}{det(P)}$ ; $Cof$ est la matrice des cofacteur
   - $Cof(P)=((-1)^{i+j}det(SP_{i,j}))_{i,j}$ ou $SP_{i,j}$ est un mineur
   - $Cof(P)=\begin{pmatrix}+\begin{vmatrix}-1&1\\0&1\end{vmatrix}&-\begin{vmatrix}1&1\\1&1\end{vmatrix}&+\begin{vmatrix}1&-1\\1&0\end{vmatrix}\\-\begin{vmatrix}1&0\\0&1\end{vmatrix}&+\begin{vmatrix}1&0\\1&1\end{vmatrix}&-\begin{vmatrix}1&1\\1&0\end{vmatrix}\\+\begin{vmatrix}1&0\\-1&1\end{vmatrix}&-\begin{vmatrix}1&0\\1&1\end{vmatrix}&+\begin{vmatrix}1&1\\1&-1\end{vmatrix}\end{pmatrix}=\begin{pmatrix}-1&0&1\\-1&1&1\\1&-1&-2\end{pmatrix}$
   - $P^{-1}=-^tCof(P)=\begin{pmatrix}1&1&-1\\0&-1&1\\-1&-1&2\end{pmatrix}$
   - $P^{-1}P=\begin{pmatrix}1&1&-1\\0&-1&1\\-1&-1&2\end{pmatrix}\begin{pmatrix}1&1&0\\1&-1&1\\1&0&1\end{pmatrix}=\begin{pmatrix}1&0&0\\0&1&0\\0&0&1\end{pmatrix}$
3. calcule $D=P^{-1}AP$
   - $AP=\begin{pmatrix}0&-1&1\\1&2&-3\\1&1&-2\end{pmatrix}\begin{pmatrix}1&1&0\\1&-1&1\\1&0&1\end{pmatrix}=\begin{pmatrix}0&1&0\\0&-1&-1\\0&0&-1\end{pmatrix}$
   - $P^{-1}AP=\begin{pmatrix}1&1&-1\\0&-1&1\\-1&-1&2\end{pmatrix}\begin{pmatrix}0&1&0\\0&-1&-1\\0&0&-1\end{pmatrix}=\begin{pmatrix}0&0&0\\0&1&0\\0&0&-1\end{pmatrix}$
4. calcule $\forall n\in\N,D^n$
   - $D^n=\begin{pmatrix}0&0&0\\0&1&0\\0&0&(-1)^n\end{pmatrix}$
5. calcule $\forall n\in\N,A^n$
   - $A=PDP^{-1}$
   - $A^n=(PDP^{-1})^n$
   - si $n=2$ alors $A^2=PDP^{-1}PDP^{-1}=PDIDP^{-1}=PD^2P^{-1}$
   - par recurence on demontre facilement que $A^n=PD^nP^{-1}$
   - $D^nP^{-1}=\begin{pmatrix}0&0&0\\0&1&0\\0&0&(-1)^n\end{pmatrix}\begin{pmatrix}1&1&-1\\0&-1&1\\-1&-1&2\end{pmatrix}=\begin{pmatrix}0&0&0\\0&-1&1\\(-1)^{n+1}&(-1)^{n+1}&2(-1)^{n}\end{pmatrix}$
   - $PD^nP^{-1}=\begin{pmatrix}1&1&0\\1&-1&1\\1&0&1\end{pmatrix}\begin{pmatrix}0&0&0\\0&-1&1\\(-1)^{n+1}&(-1)^{n+1}&2(-1)^{n}\end{pmatrix}=\begin{pmatrix}0&-1&1\\(-1)^{n+1}&1+(-1)^{n+1}&2(-1)^{n}-1\\(-1)^{n+1}&(-1)^{n+1}&2(-1)^{n}\end{pmatrix}$
