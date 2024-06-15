# Famille Vectoriel

Les espaces vectoriels de dimension finie des espaces vectoriels qui sont [engendrés](chapitre_espace-vectoriel.md#engendrer) par un nombre fini de vecteurs.
Pour ces espaces, nous allons voir comment famille minimale de vecteurs qui engendrent tout l’espace.
Nous verrons comment calculer la dimension des espaces et des sous-espaces.

- [Famille Vectoriel](#famille-vectoriel)
  - [Liée](#liée)
  - [Generatrice](#generatrice)
  - [Base](#base)

## Liée

> [!TIP] Definition Libre
> Une famille libre est **linéairement independant** c'est à dire que pour tout combinaison l'inéaire nulle alors tout les ***coefivient associer sont nul***
>
> $$
> \forall i\in P,\lambda_i,\nu_i\in K\times K^n;\sum_{i\in P}\lambda_i\nu_i=0\Rightarrow\lambda=0
> $$

> [!TIP] Definition Liée
> Une famille liée est le ***contraire***, on dit qu'elle est **linéairement dependant** c'est à dire qu'il existe une combinaison l'inéaire nulle telle que tout les ***coefivient associer sont non nul***
>
> $$
> \sum_{i\in P}\lambda_i\nu_i=0\Rightarrow\exist\lambda\neq 0
> $$

> [!NOTE] Remarque
>
> - si $p=1$ & $\nu_1=0_E$ : liée
> - si $p=2$ & $\exist\mu=\frac{\lambda_2}{\lambda_1}\in K;\nu_1=\mu\nu_2$ (colinéaire) : liée

> [!TIP] Methode
> il sufi de resoudre le systeme
> $\forall\lambda\in K^p;((\nu_i)_P)\lambda =0$
> si $\exist\lambda\neq 0$ alors $((\nu_i)_P)$ est liée

> [!NOTE] Remarque
> si $p\geq n$ alors $\mathscr{F}=\{\nu_i\in K^n|\forall i\in P\}$ est liée
> car [sytemes non trivial](Systèmes linéaire)

> [!IMPORTANT]
> Une famille est liée ***si et seulment si*** au moin **un vecteur est colinéaire à un autre**

> [!NOTE] Demostration
>
> - Supposon $\mathscr{F}$ est liée
>   donc $\exist\lambda\neq 0;\sum_{i\in P}\lambda_i\nu_i=0$
>   alors $\exist k\in P;\lambda_k\neq 0:\nu_k=\frac{-1}{\lambda_k}\sum_{i\in P\setminus k}\lambda_i\nu_i$
>   ainsi $\nu_k\in Vect(\mathscr{F}\setminus\{\nu_k\})$
> - Reciproque :
>   Supposon $\nu_k\in Vect(\mathscr{F}\setminus\{\nu_k\})$
>   par definition $\nu_k=\sum_{i\in P\setminus k}\mu_i\nu_i$
>   alors $\exist\mu_k=-1;\sum_{i\in P}\mu_i\nu_i=0$
>   or $\mu\neq 0$ ainsi $\mathscr{F}$ est liée

## Generatrice

> [!TIP] Definition
> Une famille est génératrice $\mathscr{F}$ de *ev* $E$ si tout vecteur de $E$ est engendré par la famille
>
> $$
> \forall w\in E\Leftrightarrow w\in Vect(\mathscr{F})
> $$

> [!IMPORTANT] Proposition
> Toute combinaison linéaire de famille generatrice est une famille génératrice.

> [!NOTE] Demonstration
> Consequance imediate de la definition de $Vect(\mathscr{F})$ et $Vect(\mathscr{F'})$.

> [!IMPORTANT] Minimiser les générateur
> La famille priver d'un vercteur est génératrice de $E$ ***si*** il est en combinaison linéaire des autre.

> [!NOTE] Demonstration
> Soit $E=Vect(\mathscr{F})$
> par definition $\forall w=\nu_{p+1}\in E,w=\sum_{i\in P}\lambda_i\nu_i$
> alors $\exist\mu\in K;w'=\mu w +\sum_{i\in P}\lambda_i'\nu_i$
> donc $\exist\lambda''=\mu\lambda+\lambda'\in K;\forall w'\in E,w'=\sum_{i=1}^{p+1}\lambda_i''\nu_i$

> [!TIP] Methode
> Il sufit de trouver $\lambda\in K^p;\forall w\in E,w=\sum_{i\in P}\lambda_i\nu_i$ par resolution de systemes.
> Si non il faut trouver $w\in E;\forall \lambda\in K^p,w\neq\sum_{i\in P}\lambda_i\nu_i$.

## Base

> [!TIP] Définition
> Une famille est une base de $E$ ***si*** elle est **[libre](#liée) et [generatrice](#generatrice)**

> [!IMPORTANT] Théoreme
> La famille est une base si tout vecteur de $E$ s’exprime de façon unique comme la combinaison linéaire des éléments de $\mathscr{B}$
>
> $$
> \forall w\in E,\exist!\lambda\in K^p;w=\sum_{i\in P}\lambda_i\nu_i
> $$

> [!NOTE] Demonstration
>
> - Montron l'exitence :
>   $\mathscr{B}$ est generatrice,
>   par definition $\forall w\in E,\exist\lambda\in K^p;w=\sum_{i\in P}\lambda_i\nu_i$
> - Montron l'uniciter :
>   Suppose $\exist\lambda\neq\mu\in K^{2p};\forall w=\sum_{i\in P}\lambda_i\nu_i=\sum_{i\in P}\mu_i\nu_i$
>   alors $\sum_{i\in P}(\lambda_i-\mu_i)\nu_i=0$
>   donc $\forall i\in P,\lambda_i-\mu_i= 0$ car $\mathscr{B}$ est libre
>   ainsi $\forall i\in P,\lambda_i=\mu_i$

> [!TIP] Methode
> Il sufit de trouver $\lambda\in K^p;\forall w\in E,w=\sum_{i\in P}\lambda_i\nu_i$ par resolution de systemes.
> Puis de verifier si $\sum_{i\in P}\lambda_i\nu_i=0\Rightarrow\exist\lambda\neq 0$.
> Autrement dit $((\nu_i)_P)$ est inversible

> [!NOTE] Remarque
>
> - $\lambda_i$ s'appel les **coordonées** de w dans la base $\mathscr{B}$.
> - On induit un **ordre** si non il faudrai aussi permuter les coordonées.
> - L'application $f_\mathscr{B}(\lambda)=\sum_{i\in P}\lambda_i\nu_i$ est un isomorphisme de l’espace vectoriel $K^n$ vers l’espace vectoriel $E$.

> [!IMPORTANT] Théorème de la base incomplète
>
> 1. Toute famille libre $\mathscr{L}$ peut être complétée en une base.
>    $\exist\mathscr{F};\mathscr{F}\cup\mathscr{L}\in\mathscr{B}$
> 2. De toute famille génératrice $\mathscr{G}$ on peut extraire une base de $E$.
>    $\exist\mathscr{B}\subset\mathscr{G}$

> [!NOTE] Demonstration
>
> 1. $\exist \mathscr{F}=\{g_i\in\mathscr{G}|\forall i,g_i\not\in\mathscr{L}\}$
>    En effet, par l’absurde, si tous les éléments de $\mathscr{G}$ sont dans $Vect(\mathscr{L})$, alors $\mathscr{L}$ serait déjà une base.
> 2. Par le theoreme de minimisation des generatrices $\exist\mathscr{G'}\in\mathscr{L}\subset\mathscr{G}$

> [!IMPORTANT] Théorème d’existence d’une base
> Tout espace vectoriel admettant une famille finie génératrice admet une base.

> [!NOTE] Demonstration
> Soit $\mathscr{G}$ une famille génératrice finie de $E$ et $\mathscr{L}$ une famille libre de $E$ .
> Alors $\exist\mathscr{F}\in\mathscr{G};\mathscr{L}\cup \mathscr{F}\in\mathbb{B}_E$. par le théorème de la base incomplète

> [!TIP] Methode
> Soit $\mathscr{G}$ famille generatrice de $E$, on note $g_i$ le i-eme élément de $\mathscr{G}$
>
> 1. On pose $\mathscr{L}_0=\empty$
> 2. On verif $\mathscr{L}_1=\mathscr{L}\cup g_1$ est libre
> 3. si oui alors on verifi $\mathscr{L}_2=\mathscr{L}_1\cup g_2$ est libre
> 4. si non alors on verifi $\mathscr{L}_3=\mathscr{L}\cup g_3$ est libre
> 5. et ainsi de suite pour tout $g$ de $\mathscr{G}$
