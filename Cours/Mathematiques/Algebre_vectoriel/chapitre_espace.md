# Espace Vectoriel (*ev*)

La notion d’espace vectoriel est une structure ***fondamentale*** des mathématiques modernes.
Il s’agit de dégager les ***propriétés communes*** que partagent des ensembles pourtant très différents.
Le but est d’obtenir des théorèmes généraux.
Il est bon d’avoir
d’abord étudié le chapitre « [L’espace vectoriel Rn] »

- [Espace Vectoriel (*ev*)](#espace-vectoriel-ev)
  - [Definition](#definition)
    - [K-espace vectoriel (*Kev*)](#k-espace-vectoriel-kev)
    - [Sous-espace Vectoriel (*sev*)](#sous-espace-vectoriel-sev)
  - [Propriétées](#propriétées)
    - [Intersection](#intersection)
    - [Somme](#somme)
    - [Suplementaire](#suplementaire)
    - [Engendrer](#engendrer)

## Definition

### K-espace vectoriel (*Kev*)

Un **K-espace vectoriel de $E$** (*Kev*) est un ensemble non vide $E$ muni d’une loi de composition ***interne*** et d’une loi de composition ***externe***.
qui **vérifient** les propriétés suivantes :

1. **comutativiter externe** : $\forall u,v\in E^2,u+v=v+u$
2. **associativité externe** : $\forall u,v,w\in E^3,u+(v+w)=(u+v)+w$
3. **identiter externe** : $\forall u\in E,\exist !0\in E$ élément neutre $; u+0_E=u$

> [!NOTE] Demonstration Unicite :
Soient $0_E$ et $0'_E$ deux élément neutre;
$\forall u\in E; u+0_E=u$ & $u+0'_E=u$
si $u=0'_E;0'_E+0_E=0'_E$
et si $u=0_E;0_E+0'_E=0_E$
donc $0'_E+0_E=0_E+0'_E$
alors par comutativiter $0'_E=0_E$

4. **symétrique** : $\forall u\in E\exist !u';u+u'=0_E$ noté $−u$.

> [!NOTE] Demonstration Unicite :
Soient $u'$ et $u''$ deux symetrique de u;
$\forall u\in E; u+u'=0_E$ & $u+u''=0_E$
donc $(u+u')+u''=u''$ & $(u''+u)+u'=u'$
alors par assosiativiter $u''=u'$

5. **identité interne** : $\forall u\in E,\exist !1_E\in E$ élément neutre $;1\cdot u=u$
6. **associative interne** : $\forall\lambda,\mu\in K, u\in E;\lambda\cdot (\mu\cdot u)=(\lambda\mu)\cdot u$
7. **distributive** : $\forall\lambda\in K, u,v\in E;\lambda\cdot (u+v)=\lambda\cdot u+\lambda\cdot v$
8. **distributive scalaire** $\forall\lambda,\mu\in K, u\in E;(\lambda +\mu)\cdot u=\lambda\cdot u+\mu\cdot u$

> [!TIP] Methode
> il faut regarder pour chaque point si :
> $$\forall u,v\in E,\forall\lambda,\mu\in K; \lambda u+\mu v=(\lambda u_i+\mu v_i)_{Card(E)}\in E$$

### Sous-espace Vectoriel (*sev*)

> [!TIP] Definition
> $\forall E$ [K-espace vectoriel](#definition), $\forall F\subset E$ est un *sev* ***si*** :
> 
> - F est non vide
> - F est stable par l'addition
> - F est stable par la multiplication par un scalaire

> [!IMPORTANT] Caracterisation
> Soit $F$ non vide inclue dans $E$ est un *sev* ***si et seulement si*** toute combinaison lineaire de deux élément de $F$ dans $F$

> [!NOTE] Demonstration
> Supposons que F est *sev*
> $\forall u,v\in F,\forall\lambda,\mu\in K$
> alors $\lambda u\in F$ & $\mu v\in F$
> ainsi $\lambda u+\mu v\in F$

> [!IMPORTANT] Theoreme Généralisation
> $F$ est un *Kev* pour les lois induite par $E$ ***si*** $E$ un *Kev* et $F$ un *sev* de $E$ 

> [!NOTE] Demonstration
> Soit $F$ un *sev* d’un espace vectoriel $(E, +, ·)$.
> - La stabilité de $F$ pour les deux lois permet les propriétés de commutativité et d’associativité de l’addition, ainsi que les quatre axiomes relatifs à la loi externe sont vérifiés, car ils sont satisfaits dans $E$ donc en particulier dans $F$ , qui est inclus dans $E$.
> - L’existence d’un élément neutre découle de la définition de *sev*.
> - Il reste seulement à justifier son symétrique appartient à $F$. Fixons $u\in F$. Comme $u\in E$ et $E$ est un *ev* alors $\exist −u\in E;u+(−u)=0_E$. Comme $u\in F$, alors $\exist\lambda=−1, (−1)u\in F$ . Ainsi $−u\in F$.

## Propriétées

### Intersection

> [!IMPORTANT] Theoreme d'Intersection
> Soient $F,G$ deux *sev* de $E$ *ev*. L’intersection $F\cap G$ est un *sev* de $E$ 

> [!NOTE] Demonstration
> $\forall F,G$ deux *sev* de $E$ *ev*.
> - $0_E\in F,0_E\in G$ car $F,G$ sont des *sev* de $E$ ; donc $0_E\in F\cap G$.
> - $\forall u,v\in F\cap G$ implique $u+v\in F$ & $u+v\in G$ donc $u+v\in F\cap G$.
> - $\forall u\in F\cap G, \lambda\in K$. Comme F est un *sev*, alors $u\in F$ implique $\lambda u\in F$ & $\lambda u\in G$. Donc $\lambda u\in F\cap G$.

### Somme

> [!TIP] Definition
> La somme des *sev* $F$ et $G$ de $E$ corespont à la tout les sommes posible des éléments de chaque *sev* ;
> $$F+G=\{u+v|u,v\in F\times G\}$$

> [!IMPORTANT]
> La somme des *sev* $F$ et $G$ de $E$ est le plus petit *sev* contenant à la fois $F$ et $G$

> [!NOTE] Demonstration
> - Montrons que $F+G$ est un sous-espace vectoriel.
>   - $\exist 0_E\in F , 0_E\in G$, 
> donc $0_E=0_E+0_E\in F+G$.
>   - $\forall w,w'\in (F+G)^2$. 
> $\exist u,u',v,v'\in F^2\times G^2; w=u+v$ & $w'=u'+v'$
> alors $w+ w'=(u+ v)+(u'+v') = (u+u')+(v+v')\in F+G$, car $u+u'\in F et v+v'\in G$.
>   - $\forall w\in F+G, λ\in K\exist u,v\in F\times G; w=u+v$
> alors $\lambda w=\lambda (u+v)=(\lambda u)+(\lambda v)\in F+G$
> - Montrons qu'il est le plus petit.
>   - L’ensemble F+G contient F et contient G :
> en effet $\forall u\in F; u=u+0$
> avec $0\in G$, 
> donc $u\in F+G$. De même pour G.
>   - Si $F,G\subset H$ est un *sev*, montrons que $F+G\subset H$.
> si $u\in F$ alors $u\in H$ car $F\subset H$, de même pour $G$.
> alors $u+v\in H$ car $H$ est un *sev*.

### Suplementaire

> [!TIP] Definition Somme Directe
> $F$ et $G$ deux *sev* sont en somme directe dans $E$ si leur [somme](#somme) forme tout $E$ et leur [intersection](#intersection) est reduit au vecteur nul

> [!TIP] Definition
> $F$ et $G$ deux *sev* sont suplémentaie dans $E$ ***si*** il sont en **somme directe** dans $E$

> [!IMPORTANT] Proposition
> $F$ et $G$ deux *sev* sont suplémentaie dans $E$ ***si et seulement si***
> $$\forall w\in E,\exist !u,!v\in F\times G; w=u+v$$

> [!NOTE] Demonstration
> - Montrons que tout élément $E$ se décompose de manière unique.
> Supposons $E=F\oplus G$
> $\forall w\in E,\exist u,u',v,v'\in F^2\times G^2;w=u+v=u'+v'$
> donc $u−u'=v−v'$
> alors $v−v'\in F$ car $F$ *sev*, de meme pour G
> conclusion $v−v',w'−w\in (F\cap G)^2$.
> mais F ∩ G = {0E} car F et G sont en somme direct,
> donc $u−u'=v−v'=0_E$.
> On déduit $u=u'$ et $v=v'$
> - montrons E = F ⊕ G.
> Supposons $\forall w\in E,\exist !u,!v\in F\times G$
>   - Montrons $F\cap G=\{0_E\}$.
> Si $w\in F\cap G$,
> alors $w=u+0_E$ & $w=0_E+v$
> donc $w=0_E$ par l’unicité de la décomposition.
>   - Montrons $F+G=E$.
> rien à prouver, car par hypothèse

> [!TIP] Methode
> - motrer que l'unique intersection est l'element nul :
> On prend $u\in F$ et on lui aplique les condition de $G$
> - motrer que $E$ à une unique decomposition dans $F$ et $G$ :
> On prend $w\in E$ simple et on trouve $u,v\in F\times G$

### Engendrer

> [!IMPORTANT] Théorème de structure
> Soit $(u_i)_N$ un ensemble fini de vecteurs d’un *Kev* $E$. Alors :
> L’ensemble des combinaisons linéaires des vecteurs est le plus petit *sev* de E (au sens de l’inclusion) contenant les vecteurs.

> [!TIP] Definition
> sous-espace engendré par $(\nu_i)_P\in E^{n\cdot p}$
> $$Vect((\nu_i)_N)\Leftrightarrow\forall i\in P,\lambda_i\in K;u=\sum_{i=1}^n\lambda_i \nu_i$$

> [!NOTE] Demonstration
> - Montrons que $F$ est un *sev*.
> Soit $F=\{u=\sum_{i=1}^n\lambda_i \nu_i\}$ :
>   - si $\lambda =0:u=0_E\in F$
>   - soit $u,v\in F:\exist\gamma,\mu\in K^{2n};u=\sum_{i=1}^n\gamma_i \nu_i$ & $v=\sum_{i=1}^n\mu_i \nu_i$
> donc $u+v=\sum_{i=1}^n(\gamma_i+\mu_i)\nu_i\in F$ (Gauss)
>   - soit $\lambda\in K:\lambda u=\sum_{i=1}^n\lambda\gamma_i \nu_i\in F$ par comutativiter
> - Montron $F$ est le plus petit *sev* (au sens de l’inclusion) contenant $(\nu_i)_P$ :
> Si $G$ *sev* contenant $(\nu_i)_P$,
> alors il est stable par combinaison linéaire ;
> donc il contient toute combinaison linéaire des vecteurs $(\nu_i)_P$.
> Par conséquent $F$ est inclus dans $G$
