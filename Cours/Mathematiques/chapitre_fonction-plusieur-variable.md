# Fonctions de plusieurs variables

## Introduction

Vous savez déterminer ses **caractéristiques** (croissance, maximum, limite...).
Mais de nombreux phénomènes dépendent de ***plusieurs paramètres***. Le but de ce cours est de faire le même travail que pour les fonctions d'une variable.

### Somaire

- [Fonctions de plusieurs variables](#fonctions-de-plusieurs-variables)
  - [Introduction](#introduction)
    - [Somaire](#somaire)
    - [Définition](#définition)
    - [Topologie](#topologie)
  - [Graphe](#graphe)
    - [Fonctions](#fonctions)
    - [Ligne](#ligne)
      - [Tranches](#tranches)
      - [Niveau](#niveau)
  - [\\begin{itemize}](#beginitemize)

### Définition

Nous allons étudier des fonctions, dites ***fonctions vectorielles***. Ces fonctions seront donc de la forme $$\forall n,p\in\N ^2\ge 1;f:E\subset\R ^n\rightarrow\R^p$$
Autrement dit, les éléments de l'ensemble de départ $E$ seront des $n$-uplets du type $(x_1,\ldots,x_n)$ que l'on peut considérer comme des vecteurs, et les éléments de l'ensemble d'arrivée seront des réels.

On notera $X_n=(x_1,\ldots,x_n)$ désignera le vecteur.

### Topologie

Voici quelques rappels de topologie dans l'espace vectoriel $\R ^n$.

- Le **produit scalaire** usuel
$$\langle X_n\mid Y_n\rangle =\sqrt{\sum_{i=1}^n{x_i*y_i}}$$

- La **norme euclidienne** sur $\R ^n$ est la norme associée à ce produit scalaire.
$$\|X_n\| = \sqrt{\langle X \mid X\rangle}.$$

- La **distance** entre le point deux points
  $$\|X_n-A_n\|=\sqrt{\sum_{i=1}^n{(x_i-a_i)^2}}.$$
  
- La **boule ouverte** de centre $A\in\R ^n$ et de rayon $r>0$
$$B_r(A_n)=\left\{X_n\in \R ^n \mid \|X_n-A_n\|<r \right\}.$$

- On dit que $U$ est un **voisinage** de $A$ si $$\exist r>0;\exist B_r(A_n)\subset U$$

- On dit que $U$ est un **ouvert** de $\R ^n$ si, pour tout point $$\forall A_n\in U,\exist r>0;B_r(A_n)\subset U$$

## Graphe

### Fonctions

- Une **fonction** Soit $f : E \to \R $ associe à tout $X_n$ de $E$ ***un seul nombre réel*** $f(X_n)$.
- le **domaine de définition** de $f$ est le plus grand sous-ensemble tel que, pour chaque $X_n \in D_f$, $f(X_n)$ ***soit bien définie***.
- L'**image** d'une fonction
$$\text{Im }f = \big\{f(X_n)\mid(X_n)\in E\big\}\subset\R$$
- Une **fonction vectorielle** $f:\R^n\to\R^p$ associe à tout $X_n$ de $E$ un $p$-uplet de nombres réels $(f_i(X_n))_{0<i<p}$.

### Ligne

Nous nous limiterons souvent aux dimensions inférieures ou égales à $3$ pour $n$ et $p$, la généralisation aux dimensions supérieures ne posant pas de problème particulier, sauf pour faire des dessins.

- Le **graphe** $\mathcal{G}_f$ de $f$ est le sous-ensemble de $\R^3$ formé des points de coordonnées $(x,y,f(x,y))$ avec $(x,y)$ dans l'ensemble de définition.
$$\mathcal{G}_f= \big\{(x,y,z)\in \R^3 \mid (x,y)\in D_f \text{ et } z=f(x,y)\big\}.$$

#### Tranches

Tracer, pour quelques valeurs de $a$ et $b$, les graphes des ***fonctions partielles*** représente l'intersection du graphe avec le plan choisi $(y=b)$ ou $(x=a)$.
$$f_1:x\mapsto f(x,b) \quad \text{ et } \quad f_2:y\mapsto f(a,y).$$

#### Niveau

On va aussi s'intéresser à d'autres courbes tracées sur la surface.

- La **ligne de niveau** à  $z=c$ : $$L_c =\{(x,y)\in D_f \mid f(x,y)=c\}$$
- La **courbe de niveau** à $z=c$ : On l'obtient en partant de la ligne de niveau $c$ et en remontant à l'altitude $c$, c'est la trace de $\mathcal{G}_f$ dans le plan.  $$\mathcal{G}_f \cap (z=c) = \big\{ (x,y,c)\in \R ^3 \mid f(x,y)=c \big\}.$$
- **Surfaces de niveau** : Pour les fonctions de $3$ variables, le graphe étant dans $\R ^4$, on ne peut le dessiner. La notion analogue à la ligne de niveau est celle de **surface de niveau**, donnée par l'équation $f(x,y,z)=c$.

\begin{miniexercices}
\sauteligne
\begin{enumerate}
- Déterminer et dessiner le domaine de définition de la fonction définie par $f(x,y) = \ln(xy)$.
  Même question avec $g(x,y) = \sqrt{2x-y^2+1}$ et $h(x,y,z) = \frac1x + \frac1y + \frac1z$.
   
- Déterminer l'image des fonctions de la question précédente.
  
- Soit $f(x,y) = xy$. Dessiner le graphe de $f$, les tranches et les lignes de niveau. Quelle surface reconnaissez-vous ? Vous pouvez vous aider d'un ordinateur. Mêmes questions avec $g(x,y) = -x^2-y^2$. 
  
\end{enumerate}
\end{miniexercices}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Limites}


Les notions de limite et de continuité des fonctions d'une seule variable se généralisent en plusieurs variables sans complexité supplémentaire : il suffit de remplacer la valeur absolue par la norme euclidienne.


%----------------------------------------------------
\subsection{Définition}



Soit $f$ une fonction $f: E \subset \R ^n \to \R$ définie au voisinage de $x_0 \in \R ^n$, sauf peut-être en $x_0$.

\begin{definition}
La fonction $f$ admet pour **limite} le nombre réel $\ell$ lorsque $x$ tend vers $x_0$ si : 
$$\forall \epsilon >0 \quad \exists \delta > 0 \qquad
\forall x\in E  \qquad 
0< \| x-x_0 \| <\delta \implies | f(x)-\ell | < \epsilon
$$
On écrit alors 
$$\lim_{x_0} f = \ell \qquad \text{ ou }\qquad \lim_{x \to x_0} f(x) = \ell \qquad \text{ ou } \qquad f(x) \underset{x\to x_0}{\longrightarrow} \ell.$$
\end{definition}

On définirait de même $\lim_{x \to x_0} f(x) = +\infty$ par :
$$\forall A >0 \quad \exists \delta > 0 \qquad
\forall x\in E  \qquad 
0< \| x-x_0 \| <\delta \implies | f(x) | > A
$$

\begin{remarque*}
\sauteligne
\begin{itemize}
\item La notion de limite ne dépend pas ici des normes utilisées.
\item Si elle existe, la limite est unique.
\end{itemize}
\end{remarque*}


\begin{exemple}
\label{ex:plusvarex}
Soit $f$ la fonction définie par $f(x,y) = x^2+y\sin(x+y^2)$.
\begin{enumerate}
- Montrer que $f(x,y)$ tend vers $0$ lorsque $(x,y) \to (0,0)$. 
- Trouver un ouvert $U$ contenant l'origine tel que, pour tout $(x,y) \in U$, on ait $| f(x,y) | < \frac{1}{100}$.
\end{enumerate}
  
\begin{center}
  \includegraphics[scale=0.4]{figures/fig-plusvar-31-01}
\end{center}
 

\bigskip
\emph{Solution.}

\begin{enumerate}
- On majore $|f(x,y)|$ en utilisant l'inégalité triangulaire et $|\sin(t)| \le 1$ :
  $$\big| f(x,y) \big|  = \big| x^2+y\sin(x+y^2) \big| \le
  x^2 + |y| \big| \sin(x+y^2) \big| \le x^2 +|y|$$ 
  
  Fixons $0<\epsilon<1$. Fixons $a = \sqrt{\frac{\epsilon}{2}}$ et $b=\frac\epsilon2$. Alors, pour $x \in {}]-a,a[$, on a $x^2 < \frac\epsilon2$ et, pour $y \in {}]-b,b[$, on a $|y| < \frac\epsilon2$. Pour $(x,y) \in {}]-a,a[ \times  {}]-b,b[$, on a donc 
  $$\big| f(x,y) \big| \le x^2 +|y| < \frac\epsilon2 + \frac\epsilon2 = \epsilon.$$
  
  Une valeur $\delta$ qui convient est donc $\delta = \frac\epsilon2$. En effet,
  si $\| (x,y) \| < \delta$ alors $|x| < \delta = \frac\epsilon2 \le  \sqrt{\frac{\epsilon}{2}} $ 
  et $|y| < \delta = \frac\epsilon2$ donc $|f(x,y)| < \epsilon$. Conclusion : $f$ admet pour limite $0$ lorsque $(x,y)$ tend vers $(0,0)$.
  
\myfigure{1}{
  \tikzinput{fig-plusvar-31-02}
} 
  
  
- Pour $\epsilon = \frac{1}{100}$, on a $a = \frac{1}{\sqrt{200}}$ et $b=\frac{1}{200}$. Pour chaque $(x,y)$ de l'ouvert $]-a,a[ \times {}]-b,b[$, on a $|f(x,y)| < \frac{1}{100}$.
\end{enumerate}
  
\end{exemple}

%----------------------------------------------------
\subsection{Opérations sur les limites}


Pour calculer les limites, on ne recourt que rarement à cette définition. 
On utilise plutôt les théorèmes généraux : opérations sur les limites et encadrement. 
Ce sont les mêmes énoncés que pour les fonctions d'une variable : il n'y a aucune difficulté ni nouveauté. 


\begin{proposition}[Opérations sur les limites]
Soient $f,g:\R ^n\to \R $ définies au voisinage de $x_0 \in \R ^n$ et telles que $f$ et $g$ admettent des limites en $x_0$. Alors :
$$\lim_{x_0}(f+g)=\lim _{x_0}f+\lim _{x_0}g 
\qquad  \qquad 
\lim _{x_0}(f \cdot g)=\lim _{x_0}f\times \lim _{x_0}g$$
Et si $g$ ne s'annule pas dans un voisinage de $x_0$ :
$$\lim _{x_0}\frac{1}{g}=\frac{1}{\lim _{x_0}g} 
\qquad  \qquad 
\displaystyle \lim _{x_0}\frac{f}{g}=\frac{\lim _{x_0}f}{\lim _{x_0}g}
$$
\end{proposition}

\begin{remarque*}
\sauteligne
\begin{itemize}
- 
Les résultats ci-dessus sont aussi valables pour des limites infinies avec les conventions usuelles :
$$\ell+\infty =+\infty,\quad \ell-\infty =-\infty,\quad \frac{1}{0^+}=+\infty ,\quad \frac{1}{0^-}=-\infty ,\quad \frac{1}{\pm \infty }=0,$$
$$\ell\times \infty =\infty \; (\ell\neq 0),\; \infty \times \infty =\infty \text{ (avec règle de multiplication des signes).}$$

- 
Les formes indéterminées sont : $+\infty -\infty$, $\dfrac{0}{0}$, 
$\dfrac{\infty }{\infty}$, $0\times \infty$, , $\infty^0$, $1^{\infty}$ et $0^0$.
\end{itemize}
\end{remarque*}


La composition est aussi souvent utile : 
\begin{itemize}
- soit $f : \R ^n \to \R $ une fonction de plusieurs variables, telle que $\lim_{x \to x_0} f(x) = \ell$,
- soit $g : \R  \to \R $ une fonction d'une seule variable, telle que 
$\lim_{t \to \ell} g(t) = \ell'$,
- alors la fonction de plusieurs variables $g \circ f : \R ^n \to \R $ définie par $(g \circ f) (x) = g \big( f(x) \big)$ vérifie
  $\lim_{x \to x_0} (g \circ f)(x) = \ell'$.
\end{itemize}

Application : grâce à l'exemple \ref{ex:plusvarex}, et comme $e^t \to 1$ lorsque $t\to 0$, on en déduit :
$$e^{x^2+y\sin(x+y^2)} \xrightarrow[(x,y) \to (0,0)]{} 1$$


\bigskip

Il existe aussi un théorème \og{}des gendarmes\fg{}.
\begin{theoreme}[Théorème d'encadrement] 
Soient $f,g,h:\R ^n\to \R $ trois fonctions définies dans un voisinage $U$ de $x_0 \in \R ^n$.
\begin{itemize}
- Si, pour tout $x \in U$, on a $f(x) \le  h(x) \le g(x)$,
- et si $\lim_{x_0} f = \lim_{x_0} g = \ell$,
\end{itemize}
alors $h$ admet une limite au point $x_0$ et $\displaystyle \lim _{x_0} h=\ell$.
\end{theoreme}



\begin{exemple}
Soit $h$ définie par $h(x,y) = \cos(x+y^2)\big( x^2+y\sin(x+y^2) \big)$.
On majore la valeur absolue du cosinus par $1$ :
$$\big| h(x,y) \big| \le \big|x^2+y\sin(x+y^2)\big| .$$
On a vu lors de l'exemple \ref{ex:plusvarex} que la fonction définie par
$f(x,y) = x^2+y\sin(x+y^2)$ tend vers $0$ en $(0,0)$. 
Donc, par le théorème des gendarmes, $h(x,y)$ tend aussi vers $0$ lorsque $(x,y)$ tend vers $(0,0)$.
\end{exemple}



%----------------------------------------------------
\subsection{Limite le long d'un chemin}

L'unicité de la limite implique que, quelle que soit la façon dont on arrive au point $x_0$, la valeur limite est toujours la même.

\begin{proposition} Soit $f:\R ^n\to \R $ une fonction définie au voisinage de $x_0 \in \R ^n$, sauf peut-être en $x_0$.
\begin{enumerate}
\item Si $f$ admet une limite $\ell$ au point $x_0$, alors la restriction de $f$ à toute courbe passant par $x_0$ admet une limite en $x_0$ et cette limite est $\ell$. 
\item Par contraposée, si les restrictions de $f$ à deux courbes passant par $x_0$ ont des limites différentes au point $x_0$, alors $f$ n'admet pas de limite au point $x_0$.
\end{enumerate}
\end{proposition}

Détaillons dans les cas des fonctions de deux variables :
\begin{itemize}
- Une courbe passant par le point $(x_0,y_0) \in \R ^2$ est une fonction continue 
$\gamma : \R  \to \R ^2$, $t \mapsto (x(t),y(t))$, telle que $\gamma(0) = (x_0,y_0)$.
- La restriction de $f$ le long de $\gamma$ est la fonction d'une variable $f \circ \gamma$ : $t \mapsto f \big( x(t),y(t) \big)$.
- Si $f$ a pour limite $\ell$ en $(x_0,y_0)$ alors la première partie de la proposition affirme que 
  $f \big( x(t),y(t) \big) \underset{t \to 0}{\longrightarrow} \ell$.
\end{itemize}

\myfigure{1}{
  \tikzinput{fig-plusvar-33-01}
}

\begin{exemple}
Soit $f : \R ^2 \to \R $ définie par 
$$f(x,y) = \frac{xy}{x^2+y^2} \text{ si } (x,y) \neq (0,0) \quad \text{ et } \quad
f(0,0) =0.$$

La fonction $f$ admet-elle une limite en $(0,0)$ ?

\bigskip
\emph{Solution.}

\begin{itemize}
- Si on prend le chemin $\gamma_1(t) = (t,0)$, alors 
  $(f \circ \gamma_1) (t) = f(t,0) = 0$. Donc, lorsque $t \to 0$, $(f \circ \gamma_1) (t) \to 0$.
  
- Si on prend le chemin $\gamma_2(t) = (t,t)$, alors 
  $(f \circ \gamma_2) (t) = f(t,t) = \frac{t^2}{2t^2} = \frac12$. Donc, lorsque $t \to 0$, $(f \circ \gamma_2) (t) \to \frac 12$.


Ci-dessous, sur la figure de gauche, les deux chemins du plan ; 
sur les deux figures de droite, deux vues différentes des valeurs prises par $f$ le long de ces chemins.

\begin{minipage}{0.25\textwidth}
\myfigure{0.6}{
  \tikzinput{fig-plusvar-33-02}
}
\end{minipage}
\begin{minipage}{0.79\textwidth}
\begin{center}
\includegraphics[scale=0.20]{figures/fig-plusvar-33-03a} 
\includegraphics[scale=0.27]{figures/fig-plusvar-33-03b}  
\end{center}
\end{minipage}


   
- Si $f$ admettait une limite $\ell$ alors, quel que soit le chemin $\gamma(t)$ tel que $\gamma(t) \to (0,0)$ lorsque $t\to0$, on aurait  $(f \circ \gamma) (t) \to \ell$. 
  On aurait donc $\ell=0$ et $\ell=\frac12$, ce qui contredirait l'unicité de la limite. Ainsi, $f$ n'a pas de limite en $(0,0)$.
\end{itemize}
\end{exemple}

\bigskip
\bigskip

Une autre formulation possible : 

Si $f : \R ^n\to \R $ a pour limite $\ell$ en $x_0 \in \R ^n$ alors,
pour toute suite $(u_n)$ d'éléments de $\R ^n$ telle que $u_n \to x_0$, on a $f(u_n) \to \ell$. 
Pour les fonctions de deux variables, cela s'écrit ainsi :
si $f$ a pour limite $\ell$ en $(a,b)$ alors, pour toute suite
$(a_n,b_n) \to (a,b)$, on a $f(a_n,b_n) \to \ell$.


%----------------------------------------------------
\subsection{Fonctions continues}


\begin{definition}
\sauteligne
\begin{enumerate}
\item $f : E \subset \R ^n \rightarrow \R $ est **continue en $x_0$} $\in E$ si $\displaystyle \lim_{x \rightarrow x_0} f(x) = f(x_0)$.
\item $f$ est **continue sur $E$} si elle est continue en tout point de $E$.
\end{enumerate}
\end{definition}

Par les propriétés des limites, si $f$ et $g$ sont deux fonctions continues en $x_0$, alors : 
\begin{itemize}
\item la fonction $f + g$ est continue en $x_0$,
\item de même $fg$ et $f/g$ (avec $g(x) \neq 0$ sur un voisinage de $x_0$)  sont continues en $x_0$,
\item si $h : \R  \to \R $ est continue, alors $h \circ f$ est continue en $x_0$.
\end{itemize}

\begin{exemple}
\sauteligne
\begin{itemize}
- Les applications définies par $(x,y)\mapsto x+y$, $(x,y)\mapsto xy$, puis 
  toutes les fonctions polynômes en deux variables $x$ et $y$ sont continues sur $\R ^2$ (par exemple $(x,y)\mapsto x^2+3xy$). De la même façon, toutes les fractions rationnelles 
  en deux variables sont continues là où elles sont définies.
  
- Comme l'exponentielle est une fonction continue, alors $(x,y)\mapsto e^{xy}$ est continue sur $\R ^2$.
  
- La fonction définie par $f(x,y) = \frac{1}{\sqrt{x^2 + y^2}}$ est continue sur $\R ^2\setminus\{(0,0)\}$.
\end{itemize}
\end{exemple}
  


\begin{definition}[Prolongement par continuité]
Soit $f: E \subset \R ^n \to \R $. Soit $x_0$ un point adhérent à $E$ 
n'appartenant pas à $E$. Si $f(x)$ a une limite $\ell$ lorsque $x \to x_0$,
on peut étendre le domaine de définition de $f$ à $E \cup \lbrace x_0 \rbrace$ en posant $f(x_0)=\ell$. 
La fonction étendue est continue en $x_0$. On dit que l'on a obtenu un **prolongement de $f$ par continuité} au point $x_0$.
\end{definition}


\begin{exemple}
Soit $f : \R ^2 \setminus \{ (0,0) \}$ définie par 
$$f(x,y) = \frac{xy}{\sqrt{x^2+y^2}}.$$

Est-il possible de prolonger $f$ par continuité en $(0,0)$ ?

Sur la figure ci-dessous, la question devient simplement : est-il possible de 
boucher le trou au milieu de la surface en rajoutant juste un point ?
\begin{center}
\includegraphics[scale=0.3]{figures/fig-plusvar-34-01}  
\end{center}

\bigskip
\emph{Solution.}

\begin{itemize}
- \textbf{Limite à l'origine.}
  
  On utilise que $|x| \le \sqrt{x^2+y^2}$ et $|y| \le \sqrt{x^2+y^2}$.
  Donc
  $$| f(x,y) |  = \frac{|x| \cdot |y|}{\sqrt{x^2+y^2}}
  \le \sqrt{x^2+y^2} \xrightarrow[(x,y) \to (0,0)]{} 0.$$
  
- \textbf{Prolongement.}
  
  Pour prolonger $f$ en $(0,0)$, on choisit comme valeur la limite obtenue.  
  On pose donc $f(0,0) = 0$. (On note encore $f : \R ^2 \to \R $ la fonction prolongée.) 
  
- \textbf{Continuité.}
  
  Par notre choix de $f(0,0)$, $f$ est continue en $(0,0)$.
  En dehors de l'origine, $f$ est continue comme somme, produit, composition, inverse de fonctions continues. 
  Conclusion : la fonction prolongée est continue sur $\R ^2$ tout entier.
\end{itemize}  
\end{exemple}


%----------------------------------------------------
\begin{miniexercices}
\sauteligne
\begin{enumerate}
- Soit $f(x,y) = \frac{1+x}{1+y}$. Trouver un ouvert $U$ contenant l'origine tel que 
  $0.999 < f(x,y) < 1.001$ pour tout $(x,y) \in U$.

- Soit $f : \R ^n \rightarrow \R $ une fonction continue au point $(x_1,\ldots,x_n)$.
  Montrer que la fonction partielle $f_i : \R  \longrightarrow \R $ définie par 
  $f_i(t) = f(x_1,\ldots,x_{i-1},t,x_{i+1},\ldots,x_n)$ est continue en $x_i$.
  
- Sachant que la limite de $f(x,y) = \frac{1+x}{1+y}$ en $(0,0)$ est $1$, calculer la limite des fonctions suivantes en $(0,0)$ : $\frac{1+x}{1+y}+ x^2+y^2$ ; $\frac{1+y}{1+x}$ ;   $\sin(xy)\frac{1+x}{1+y}$ ; $\ln\left(\frac{1+x}{1+y}\right)$.
  
- Sachant que $\ln(t) \le t-1$ pour tout $t>0$, calculer la limite de $\frac{\ln(1+xy)}{1+x^2+y^4}$ en $(0,0)$. 
  
- Soit $f(x,y)= \frac{\sin(x^2-y^2)}{x^2+y^2}$. Soit $\gamma(t) = (at,bt)$ où $(a,b) \in \R ^2\setminus \{(0,0)\}$ est fixé. Calculer la limite de $(f \circ \gamma)(t)$ lorsque $t\to0$ en fonction de $(a,b)$. $f$ admet-elle une limite en $(0,0)$ ?  $f$ est-elle prolongeable par continuité en $(0,0)$ ? 
  
  
- Soit $f$ définie sur $\R ^2\setminus \{ (0,0) \}$ par 
  $f(x,y) = \frac{xy^3}{x^2+2y^2}$. 
  $f$ admet-elle une limite en $(0,0)$ ? 
  $f$ est-elle prolongeable par continuité en $(0,0)$ ? 
  Mêmes questions avec $f(x,y)=\frac{xy^3}{x^4+2y^4}$.
  
\end{enumerate}
\end{miniexercices}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Coordonnées polaires}


Plutôt que de repérer un point du plan $\R ^2$ par ses coordonnées cartésiennes $(x,y)$, 
on peut le faire au moyen de sa distance à l'origine et de l'angle formé avec l'horizontale : ce sont les coordonnées polaires.


%----------------------------------------------------
\subsection{Définition}

Soit $M$ un point du plan $\R ^2$. Soit $O=(0,0)$ l'origine. Soit $(O, \vec i, \vec j)$ un repère orthonormé direct.

\begin{itemize}
- On note $r = \| \overrightarrow{OM} \|$, la distance de $M$ à l'origine.
- On note $\theta$ l'angle entre $\vec i$ et $\overrightarrow{OM}$.
\end{itemize}

\myfigure{1}{
  \tikzinput{fig-plusvar-41-01}
}

On note $[r:\theta]$ les **coordonnées polaires} du point $M$. Dans ce cours, $r$ sera toujours positif.
L'angle n'est pas déterminé de manière unique, plusieurs choix sont possibles. 
Pour avoir unicité, on peut limiter $\theta$ à l'intervalle $[0,2\pi[$, ou bien 
$]-\pi,+\pi]$. On n'attribue généralement pas de coordonnées polaires au point origine (l'angle n'aurait pas de sens). 

\bigskip
\evidence{Coordonnées polaires vers coordonnées cartésiennes.}

On retrouve les coordonnées cartésiennes $(x,y)$ à partir des coordonnées polaires $[r:\theta]$ par les formules
$$x = r\cos \theta \qquad\text{ et }\qquad y = r \sin \theta.$$

Autrement dit, on a défini une application :
$$
]0,+\infty[\times[0,2\pi[\rightarrow \R ^2 \qquad (r,\theta)\mapsto (r\cos\theta,r\sin\theta).
$$

\bigskip
\evidence{Coordonnées cartésiennes vers coordonnées polaires.}

On retrouve  $r$ et $\theta$ à partir de $(x,y)$ par les formules suivantes :
$$r = \sqrt{x^2+y^2}$$
et, dans le cas $x>0$ et $y\ge0$, 
$$\theta = \arctan\left(\frac yx\right).$$

Pour les points dans les autres quadrants, on se ramène au quadrant principal où $x>0$ et $y\ge0$.



%----------------------------------------------------
\subsection{Limite et continuité}


Lorsque l'on considère des applications $f: E \subset \R ^2 \rightarrow \R$, il est quelquefois plus facile de prouver des résultats de limite, continuité, etc., en passant par les coordonnées polaires.


\begin{proposition}
\label{prop:limrtheta}
Soit $f:\R ^2\to \R $ une fonction définie au voisinage de $(0,0)\in \R ^2$, sauf peut-être en $(0,0)$. Si
$$\lim _{r\to 0}f(r\cos \theta ,r\sin \theta )=\ell \in \R $$
existe indépendamment de $\theta$, c'est-à-dire
qu'il existe une fonction $\epsilon(r)\underset{r\to0}{\longrightarrow}0$ telle que, pour tout $r>0$ et tout $\theta$, on a :
$$\big| f(r\cos \theta ,r\sin \theta ) - \ell \big| \le \epsilon(r),$$
alors $\displaystyle \lim _{(x,y)\to (0,0)}f(x,y)=\ell$.
\end{proposition}


Pour clarifier cette proposition et expliquer les différents cas pratiques de la limite, voici comment faire. On exprime $f(x,y)$ en coordonnées polaires en calculant $f(r\cos\theta,r\sin\theta)$.
\begin{enumerate}
- Si $\lim_{r\to0} f(r\cos\theta,r\sin\theta)$ existe et si elle ne dépend pas de la variable $\theta$, alors cette limite est la limite de $f$ au point $(0,0)$.
  
- Si $\lim_{r\to0} f(r\cos\theta,r\sin\theta)$ n'existe pas (ou la limite n'est pas finie), alors $f$ n'a pas de limite finie au point $(0,0)$.
  
- Si $\lim_{r\to0} f(r\cos\theta,r\sin\theta) = \ell(\theta)$ dépend de $\theta$, alors $f$ n'a pas de limite au  point $(0,0)$. Pour le justifier, on donne deux valeurs $\theta_1$ et $\theta_2$ telles que $\ell(\theta_1) \neq \ell(\theta_2)$.
  
\end{enumerate}


Voyons un exemple de chaque situation.

\begin{exemple}
\sauteligne
\begin{enumerate}
- $f(x,y)=\dfrac{x^3}{x^2+y^2}$
  
  $$f(r\cos\theta,r\sin\theta) = \frac{r^3 \cos^3\theta}{r^2 (\cos^2\theta+\sin^2\theta)}
  = \frac{r^3 \cos^3\theta}{r^2} = r \cos^3 \theta$$
  Comme $\big| \cos^3 \theta \big| \le 1$ alors $r |\cos^3 \theta| \le r$ (pour tout $r$ mais aussi pour tout $\theta$) avec $\epsilon(r) := r \underset{r\to0}{\longrightarrow} 0$.  
  Ce qui implique que $f(r\cos\theta,r\sin\theta) \underset{r\to0}{\longrightarrow} 0$.
  La limite existe (indépendamment des valeurs prises par $\theta$), donc 
  la fonction $f$ admet bien une limite en $(0,0)$ : $f(x,y) \xrightarrow[(x,y) \to (0,0)]{} 0$.
  
  Pour ceux qui voudraient tout faire à la main avec plus de détails, on peut aussi écrire $\big|f(r\cos\theta,r\sin\theta)\big| \le r$, autrement dit $\big|f( x,y) \big| \le \sqrt{x^2+y^2}$. Donc $f(x,y) \xrightarrow[(x,y) \to (0,0)]{} 0$.
  
   
- $f(x,y)=\dfrac{y}{x^2+y^3}$
  
  
 $$f(r\cos\theta,r\sin\theta) = \frac{r\sin\theta}{r^2(\cos^2\theta + r\sin^3\theta)} = \frac{1}{r} \frac{\sin\theta}{\cos^2\theta + r\sin^3\theta}$$
 
Fixons $\theta$ tel que $\sin \theta \neq 0$ (c'est-à-dire $\theta \neq 0 \pmod \pi$). Alors, lorsque $r\to0$, $f(r\cos\theta,r\sin\theta)$ n'a pas de limite finie. En particulier, la fonction $(x,y) \mapsto f(x,y)$ n'a pas de limite finie en $(0,0)$.
 
  
-  $f(x,y)=\dfrac{xy}{x^2+y^2}$
  
 $$f(r\cos\theta,r\sin\theta) = \frac{r^2 \cos\theta\sin\theta}{r^2}
  = \cos\theta \sin \theta = \frac12\sin(2\theta)$$ 

Pour $\theta$ fixé, la fonction $r \mapsto f(r\cos\theta,r\sin\theta)$ admet bien une limite $\ell(\theta) = \frac12\sin(2\theta)$, lorsque $r\to0$. Mais cette limite dépend de l'angle $\theta$ :
si $\theta =0$, $\ell(\theta)=0$ ; par contre, si $\theta = \frac\pi4$, $\ell(\theta) = \frac12$. Comme la limite dépend de l'angle, alors la fonction de deux variables $(x,y) \mapsto f(x,y)$ n'a pas de limite en $(0,0)$.
\end{enumerate}
\end{exemple}

 

%----------------------------------------------------
\subsection{Un exemple}

Cet exemple est assez subtil et peut être passé en première lecture.

\begin{remarque*}
Soit $\ell \in \R $. Soit $f: \R ^2 \rightarrow \R $ une fonction telle que, pour chaque $\theta$ fixé, $\displaystyle \lim_{r \to0} f(r\cos\theta, r\sin\theta)=\ell$. Peut-on en conclure que $f$ admet $\ell$ pour limite au point $(0,0)$ ? La réponse est non !

Autrement dit, regarder la limite de $f$ le long des rayons ne permet pas de trouver la limite de $f$ à l'origine.
\end{remarque*}

Attention : la différence entre cette remarque et la proposition \ref{prop:limrtheta} est subtile. Dans la proposition \ref{prop:limrtheta}, on a une hypothèse en terme de limites du type :
$$\forall \epsilon \quad \exists r_0 \quad \forall r<r_0 \quad \forall \theta \quad  \quad \cdots$$
alors que dans la remarque, on note que l'hypothèse (plus faible) suivante est insuffisante :
$$ \forall \theta \quad \forall \epsilon \quad \exists r_0 \quad \forall r<r_0 \quad \ldots$$


\begin{exemple}
Soit la fonction $f$ définie sur $\R ^2 \setminus \{(0,0)\}$ par
$$f(x,y)=\frac{xy^2}{x^2+y^4}.$$
\begin{enumerate}
- Le long de tous les rayons $f$ tend vers $0$, c'est-à-dire, pour $\theta$ fixé,
$$f(r\cos\theta,r\sin\theta) \underset{r \to 0}{\longrightarrow} 0.$$
- Cependant, $f$ n'a pas de limite en $(0,0)$.
\end{enumerate}


\bigskip
\emph{Solution.}
\begin{enumerate}
- Calculons d'abord :
  $$f(r\cos\theta,r\sin\theta) 
  = \frac{r\cos\theta\sin^2\theta}{\cos^2\theta + r^2\sin^4\theta}$$
  
  Fixons $\theta$ et discutons selon sa valeur :
  \begin{itemize}
  - Si $\cos\theta \neq 0$, alors le numérateur tend vers $0$, tandis que le dénominateur tend vers $\cos^2\theta \neq0$. Donc $f(r\cos\theta,r\sin\theta) \to 0$ lorsque $r\to0$.
    
  - Si $\cos\theta = 0$, alors on se trouve sur des points $(x,y)$ où $x=0$ et donc 
    $f(r\cos\theta,r\sin\theta)=f(0,y)=0$.    
  \end{itemize}
  Dans tous les cas, $f$ tend vers $0$ sur tous les rayons définis par un angle $\theta$ fixé.
  
  
- Considérons le chemin $\gamma(t) = (t^2,t)$. Alors 
  $$(f \circ \gamma)(t) = \frac{t^4}{2t^4} = \frac12.$$
  Mais on a vu que le long des rayons $f$ tend vers $0$. 
  Cela contredit l'existence d'une limite pour $f(x,y)$ en $(0,0)$.
 
  \myfigure{1}{
  \tikzinput{fig-plusvar-43-01}
  }

\end{enumerate}  

\end{exemple}
 
%----------------------------------------------------
\begin{miniexercices}
\sauteligne
\begin{enumerate}

 \item Calculer l'angle $\theta$ des coordonnées polaires $[r:\theta]$ 
 d'un point $(x,y)$ dans le cas $x>0$, $y <0$. 
 Puis faire les cas où $x<0$.

- La fonction $f$ définie par $f(x,y)=\frac{(2x+3y)^3}{x^2+y^2}$  
  admet-elle une limite au point $(0,0)$ ?
  Même question avec $f(x,y)=\frac{(2x+3y)^2}{x^2+y^2}$, puis $f(x,y)=\frac{2x+3y}{x^2+y^2}$.

\end{enumerate}
\end{miniexercices}



\auteurs{
\\
Arnaud Bodin.
D'après des cours de Abdellah Hanani (Lille), 
Goulwen Fichou et Stéphane Leborgne (Rennes),
Laurent Pujo-Menjouet (Lyon). 
Relu par Anne Bauval, Vianney Combet et Barbara Tumpach.
}

\finchapitre 
\end{document}