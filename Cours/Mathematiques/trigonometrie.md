# Trigonometrie

Soit $\theta\in[0;2\pi[$
soit $\omega$ un angle en degre et $\theta$ le meme angle en radiant alors $\frac{\theta}{\omega} = \frac{\pi}{180}$

<!--![Alt text](/www/triangle.svg?sanitize=true)-->
## Definition

### CAHSOHTOA

- Cosinus : $\cos(\theta) = \frac{adjacent}{hypotenus}\in[-1;1]$
- Sinus : $\sin(\theta) = \frac{opposer}{hypotenus}\in[-1;1]$
- Tangente : $\tan(\theta)) =\frac{\sin(\theta)}{\cos(\theta)} = \frac{opposer}{adjacent}\in\R$

### Reciproque

- : $\sec(\theta) = \frac{1}{\cos(\theta)}\in\R\setminus]-1;1[$
- : $\csc(\theta) = \frac{1}{\sin(\theta)}\in\R\setminus]-1;1[$
- Cotangente : $\cot(\theta) = \frac{1}{\tan(\theta)}\in\R$

### Inverce

- Arccosinus: $\cos^{-1}(d) =\theta$
- Arcsinus: $\cos^{-1}(d) =\theta$
- Arctangente : $\tan^{-1}(d) =\theta$


## Formules

### Angle

|$\omega$|$a\pm b$|$-\theta$|$\theta+\pi/2$|$\theta+\pi$|$\theta+2n\pi$|$2\theta$|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|$\cos(\omega)$|$\cos(a)\cos(b)\mp\sin(a)\sin(b)$|$\cos(\theta)$|$-\sin(\theta)$|$-\cos(\theta)$|$\cos(\theta)$|$\cos^2(\theta)-\sin^2(\theta)$|
|$\sin(\omega)$|$\cos(a)\sin(b)\pm\sin(a)\cos(b)$|$-\sin(\theta)$|$\cos(\theta)$|$-\sin(\theta)$|$\sin(\theta)$|$2\cos(\theta)\sin(\theta)$|
|$\tan(\omega)$|$\frac{\tan(a)\pm\tan(b)}{1\mp\tan(a)\tan(b)}$|$-\tan(\theta)$|$\cot(\theta)$|$\tan(\theta)$|$\tan(\theta)$|$\frac{2\tan(\theta)}{1-\tan^2(\theta)}$|

### Identité

#### Somme

- $\cos(a)+\cos(b) =2\cos(\frac{a+b}{2})\cos(\frac{a-b}{2})$
- $\cos(a)-\cos(b) =-2\sin(\frac{a+b}{2})\sin(\frac{a-b}{2})$
- $\sin(a)+\sin(b) =2\sin(\frac{a+b}{2})\cos(\frac{a-b}{2})$
- $\sin(a)-\sin(b) =2\cos(\frac{a+b}{2})\sin(\frac{a-b}{2})$

#### Produit

- $\cos(a)\cos(b) =[\cos(a-b)+\cos(a+b)]/2$
  - $\cos^2(\theta) =[1+\cos(2\theta)]/2$
- $\sin(a)\sin(b) =[\cos(a-b)-\cos(a+b)]/2$
  - $\sin^2(\theta) =[1-\cos(2\theta)]/2$
- $\cos(a)\sin(b) =[\cos(a+b)-\sin(a-b)]/2$
  - $\cos(\theta)\sin(\theta) =\cos(2\theta)/2$
- $\sin(a)\cos(b) =[\cos(a+b)+\sin(a-b)]/2$

#### Pythagore

- $1 =\cos^2(\theta)+\sin^2(\theta)$
- $\sec^2(\theta) =1+\tan^2(\theta)$
- $\csc^2(\theta) =1+\cot^2(\theta)$

## Cas

### Resultat

|$\theta$|$0$|$\frac{\pi}{6}$|$\frac{\pi}{4}$|$\frac{\pi}{3}$|$\frac{\pi}{2}$|
|:-:|:-:|:-:|:-:|:-:|:-:|
|$\theta$°|$0$|$30$|$45$|$60$|$90$|
|$\cos(\theta)$|$1$|$\sqrt{3}/2$|$\sqrt{2}/2$|$1/2$|$0$|
|$\sin(\theta)$|$0$|$1/2$|$\sqrt{2}/2$|$\sqrt{3}/2$|$1$|
|$\tan(\theta)$|$0$|$1/\sqrt{3}$|$1$|$\sqrt{3}$|$+\infty$|

### Triangle

Soit un triangle $ABC$ d'angle resspectif $\alpha,\beta,\gamma$ et on note $a,b,c$ les coté opposer à ces angle

#### Sinus

$$\frac{\sin(\alpha)}{a}=\frac{\sin(\beta)}{b}=\frac{\sin(\gamma)}{c}$$
$$a^2 =b^2+c^2+2bc\cos(\alpha)$$

#### Mollweide

$$\frac{a+b}{c} =\frac{\cos[(\alpha-\beta)/2]}{\sin(\gamma/2)}$$
$$\frac{a-b}{a+b} =\frac{\tan[(\alpha -\beta)/2]}{\tan[(\alpha +\beta)/2]}$$