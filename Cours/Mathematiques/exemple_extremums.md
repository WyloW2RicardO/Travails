# Extremums Exercices

Déterminer les deux points critiques de $f$ et la nature de chacun d'entre eux.

1. Soit $f(x,y)=\exp(-\frac13 x^3 + x - y^2)$
   - f \in \matglac{G}^2
   - $\frac{\partial f}{\partial x}(x,y)=(-x^2+1)\exp$
   - $\frac{\partial f}{\partial y}(x,y)=-2y\exp$
   - $\frac{\frac{\partial f}{\partial x}(x,y)=0}{\frac{\partial f}{\partial y}(x,y)=0}$
     - $\frac{-x^2+1=0}{-2y=0}$
     - $\frac{x=1\text{ ou }-1}{y=0}
     - $PC=\{ (-1,0), (1,0) \}$
   - $\frac{\partial ^2 f}{\partial x^2}(x,y)=(-x^2+1)^2\exp$
     - $=(-2x)\exp$
   - $\frac{\partial ^2f}{\partial y^2}(x,y)=-2y\exp+4y^2\exp$
     - $=2y(2y-1)\exp$
   - $\frac{\partial ^2f}{\partial xy}(x,y)=-2y(-x^2+1)\exp$
   - $H_{x,y}=\frac{(-2x)\exp, -2y(-x^2+1)\exp}{-2y(-x^2+1)\exp,2y(2y-1)\exp}$
     - $H_{-1,0}=\frac{2e^{-\frac23}, 0}{0,-2e^{-\frac23}}$
       - det $H_{-1,0}=2e^{\frac43} > 0$ et $r < 0 \Rightarrow$ minima
     - $H_{1,0}=\frac{-2e^{-\frac23}, 0}{0,2e^{-\frac23}}$
       - det $H_{1,0}=-2e < 0 \Rightarrow$ sell
2. Soit $f(x,y)=x^3-3xy^2$
3. Soit $f(x,y)=x^4+y^4-2x^2$
   - $f \in C^2$
   - $\frac{\partial f}{\partial x}(x,y)=4x^3-4x$
   - $\frac{\partial f}{\partial y}(x,y)=4y^3$
   - $\begin{Bmatrix}x(4x^2-4)=0\\4y^3=0\end{Bmatrix}$
     - $\begin{Bmatrix}x=0\text{ ou }x=\pm 1\\ y=0\end{Bmatrix}$
   - $PC = \{(-1,0),(0,0),(1,0)\}$
   - $\frac{\partial ^2 f}{\partial x^2}(x,y)=12x^2-4$
   - $\frac{\partial ^2f}{\partial y^2}(x,y)=12y^2$
   - $\frac{\partial ^2f}{\partial xy}(x,y)=0$
   - $H_{x,y}=\begin{pmatrix}12x^2-4 & 0\\0 & 12y^2\end{pmatrix}$
     - $H_{-1,0}=\begin{pmatrix}8 & 0\\0 & 0\end{pmatrix}$; det $H_{-1,0}=0$
     - $H_{0,0}=\begin{pmatrix}0 & 0\\0 & 0\end{pmatrix}$; det $H_{0,0}=0$
       - $f(0+h,0+k)-f(0,0)=\frac12(h^2\frac{\partial ^2 f}{\partial x^2}(0,0)+2hk\frac{\partial ^2 f}{\partial xy}(x,y)+k^2\frac{\partial ^2 f}{\partial y^2}(x,y))+\circ \Vert h,k \Vert$ formule de Taylor
         - $=\frac12(-4h^2+0+0)+o \Vert h,k \Vert$
         - $< 0 \Rightarrow$ maxima
       - $f(0,1)=1>0=f(0,0) \Rightarrow (0,0)$ maxima local
     - $H_{1,0}=\begin{pmatrix}8 & 0\\0 & 0\end{pmatrix}$; det $H_{1,0}=0$
       - $\forall x,y,f(x,y)=(x^2-1)^2-1+y^4 \geq -1=f(1,0) \Rightarrow (1,0)$ minima globale
1. $f(x,y)=x^3+3xy^2-15x-12y$
   - $f \in C^\infty$
   - $\frac{\partial f}{\partial x}(x,y)=3x^2+3y^2-15$
   - $\frac{\partial f}{\partial y}(x,y)=6xy-12$
   - $\begin{Bmatrix}3(x^2+y^2-5)=0\\6xy-12=0\end{Bmatrix}$
     - $\begin{Bmatrix}x^2+y^2=5\\ xy=2\end{Bmatrix}$
     - $\frac2y ^2+y^2=5 \Rightarrow y\neq 0$
     - $y^4-5y^2+4=0$
     - $k^2-5k+4=0$
     - $(k-2)^2-k=0$
       - $k=1$ ou $4$
       - $y=\pm 2$ ou $\pm 1$
     - $x=\frac{2}{y}$
       - $x=\pm 1$ ou $\pm 2$
   - $PC = \{(-1,-2),(1,2),(-2,-1),(2,1)\}$
   - $\frac{\partial ^2 f}{\partial x^2}(x,y)=6x$
   - $\frac{\partial ^2f}{\partial y^2}(x,y)=6x$
   - $\frac{\partial ^2f}{\partial xy}(x,y)=6y$
   - $H_{x,y}=\begin{pmatrix}6x & 6y\\6y & 6x\end{pmatrix};$ det $H_{(x,y)}=36(x^2-y^2)$
     - $H_{(1,2)}=-108<0$ donc selle
     - $H_{(-1,-2)}=-108<0$ donc selle
     - $H_{(-2,-1)}=108>0$ et $r=-12<0$ donc maxima
       - $\lim_{x\to +\infty}f(x,0)=+\infty$ donc local
     - $H_{(2,1)}=108>0$ et $r=12>0$ donc minima local
       - $\lim_{x\to -\infty}f(x,0)=-\infty$ donc local
2. $f(x,y)=x^3+y^3-3axy, a\in \R$
   - $f \in C^\infty$
   - $\frac{\partial f}{\partial x}(x,y)=3x^2-3ay$
   - $\frac{\partial f}{\partial y}(x,y)=3y^2-3ax$
   - $\begin{Bmatrix}3(x^2-ay)=0\\3(y^2-ax)=0\end{Bmatrix}$
     - si $a=0, x=0$ et $y=0$
     - si $a\neq 0, \begin{Bmatrix}y=\frac{x^2}{a}\\\frac{x^4}{a^2}+ax=0\end{Bmatrix}$
     - $x(x^3+a^3)=0$
     - $x^3+a^3=0$
       - $x=a$
       - $y=a$
   - $PC = \{(a,a),|\forall a\in \R\}$
   - $\frac{\partial ^2 f}{\partial x^2}(x,y)=6x$
   - $\frac{\partial ^2f}{\partial y^2}(x,y)=6y$
   - $\frac{\partial ^2f}{\partial xy}(x,y)=3a$
   - $H_{x,y}=\begin{pmatrix}6x & 3a\\3a & 6y\end{pmatrix};$ det $H_{(x,y)}=36xy-9a^2$
     - $H_{(a,a)}=27a^2>0$ estrema
       - si $a<0$ alors $r<0$ maxima local
       - si $a>0$ alors $r>0$ minima local
3. $f(x,y)=x^4+y^3-4y-2$
4. $f(x,y)=x^3+xy^2-yx^2-y^3$