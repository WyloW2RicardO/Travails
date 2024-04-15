# Fonctions de plusieurs variables

- [Fonctions de plusieurs variables](#fonctions-de-plusieurs-variables)
  - [Domaine de définition](#domaine-de-définition)
  - [Image](#image)

## Domaine de définition

1. $f(x,y)=\ln(1+x+y)$
   - Soit $g(x)=\ln(x); D_g = \R^+ \\\Rightarrow \forall x,y \in \R^2, 1+x+y>0$
   - $D_f=\{(x,y)\in\R^2|x+y>-1\}$
1. $f(x,y)=\exp(\frac{x+y}{x^2-y})$
   - Soit $g(x)=\frac{1}{x}; D_g=\R \setminus 0 \\\Rightarrow \forall x,y \in \R^2, x^2 - y \neq 0$
   - $D_f=\{(x,y)\in\R^2|x^2-y\neq0\}$
1. $f(x,y,z)=\frac{1}{\sqrt{x^2+y^2+z^2-2}}$
   - Soit $g(x) = \frac{1}{x}; D_g = \R \setminus 0 $
   - Soit $h(x)=\sqrt{x}; D_h=\R^+$
   - $D_{g\circ h}=\R^+ \setminus 0 \Rightarrow \forall x,y,z \in \R^3, x^2+y^2+z^2-2>0$
   - $D_f=\{(x,y,z)\in\R^3|x^2+y^2+z^2>2\}$
1. $f(x,y) = \ln(xy)$
   - Soit $g(x)=\ln(x); D_g = \R^+\setminus0 \\\Rightarrow \forall x,y \in\R^2, xy>0$
   - $D_f=\{(x,y,z)\in\R^3|xy>0\}$ même signe
1. $f(x,y) = \sqrt{2x-y^2+1}$
   - Soit $g(x)=\sqrt{x}; D_g=\R^+ \\\Rightarrow \forall x,y \in \R^2, 2x-y^2+1>=0$
   - $D_f=\{(x,y)\in\R^2|2x-y^2>=-1\}$
1. $f(x,y,z) = \frac1x + \frac1y + \frac1z$
   - Soit $g(x) = \frac{1}{x}; D_g = \R \setminus 0 $
   - $D_f=(\R\setminus0)^3$

## Image

1. $f(x,y)=\ln(1+x+y)$
   - $\Im f=\R$
   - Contraposer : $\forall x,y \in D_f, f(x,y) \in \R$
   - Reciproque : $\forall z\in\R; f(x,y)=z \\\Leftrightarrow \ln(1+x+y)=z \\\Leftrightarrow 1+x+y=e^z \\\forall t, \exist a,b; (x,y)=(at,bt) \\\Leftrightarrow 1+t(a+b)=e^z \\\Leftrightarrow t=\frac{e^z-1}{a+b}$
1. $f(x,y)=\exp(\frac{x+y}{x^2-y})$
   - $\Im f=\R^+\setminus0$
   - Contraposer : $\forall x,y \in D_f, f(x,y)>0$
   - Reciproque : $\forall z\in\R^+\setminus0; f(x,y)=z \\\Leftrightarrow \exp(\frac{x+y}{x^2-y})=z \\\Leftrightarrow \frac{x+y}{x^2-y}=\ln(z) \\\forall t, \exist a,b; (x,y)=(at,bt) \\\Leftrightarrow \frac{a+b}{ta^2-b}=\ln(z) \\\Leftrightarrow t=\frac{\frac{a+b}{\ln(z)}+b}{a^2}$
1. $f(x,y,z)=\frac{1}{\sqrt{x^2+y^2+z^2-2}}$
   - $\Im f=\R^+\setminus0$
   - Contraposer : $\forall x,y \in D_f, f(x,y)>0$
   - Reciproque : $\forall z\in\R^+\setminus0; f(x,y)=z \\\Leftrightarrow \frac{1}{\sqrt{x^2+y^2+z^2-2}}=z \\\Leftrightarrow x^2+y^2+z^2=\frac{1}{z^2}+2 \\\forall t, \exist a,b,c; (x,y,z)=(at,bt,ct) \\\Leftrightarrow t^2(a^2+b^2+c^2)=\frac{1}{z^2}+2 \\\Leftrightarrow t=\sqrt{\frac{\frac{1}{z^2}+2}{a^2+b^2+c^2}}$
1. $f(x,y) = \ln(xy)$
   - $\Im f=\R$
   - Contraposer : $\forall x,y \in D_f, f(x,y)\in\R$
   - Reciproque : $\forall z\in\R^+\setminus0; f(x,y)=z \\\Leftrightarrow \ln(xy)=z \\\Leftrightarrow xy=e^z \\\forall t, \exist a,b; (x,y)=(at,bt) \\\Leftrightarrow abt^2=e^z \\\Leftrightarrow t=\sqrt{\frac{e^z}{ab}}$
1. $f(x,y) = \sqrt{2x-y^2+1}$
   - $\Im f=\R^+\setminus0$
   - Contraposer : $\forall x,y \in D_f, f(x,y)>0$
   - Reciproque : $\forall z\in\R^+\setminus0; f(x,y)=z \\\Leftrightarrow \sqrt{2x-y^2+1}=z \\\Leftrightarrow 2x-y^2=z^2-1 \\\forall t, \exist a,b; (x,y)=(at,bt) \\\Leftrightarrow t(2a-tb^2)=z^2-1 ...$
1. $f(x,y,z) = \frac1x+\frac1y+\frac1z$
   - $\Im f=\R$
   - Contraposer : $\forall x,y \in D_f, f(x,y)>0$
   - Reciproque : $\forall w\in\R^+\setminus0; f(x,y)=w \\\Leftrightarrow \frac1x+\frac1y+\frac1z=w \\\Leftrightarrow \frac{z(y+x)+xy}{xyz}=w \\\forall t, \exist a,b,c; (x,y,z)=(at,bt,ct) \\\Leftrightarrow \frac{c(b+a)+ab}{abct}=w \\\Leftrightarrow t=\frac{c(b+a)+ab}{abcw}$
