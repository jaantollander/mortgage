# Mortgage calculations
- $x$ : initial size of the mortgage
- $n$ : number of payment periods
- $i=1,2,...,n$ : index of an payment period
- $r_{i}$ : interest rate during the period $i$
- $x_{i}$ : size of the mortgage at the start of period $i$
- $y_{i}$ : installment payment on period $i$
- $z_{i}$ : interest payment on period $i$
- $p_{i}$ : total payment on period $i$

Initial size of the mortgage

$$x_{1}=x$$

We subtract the installment payment from previous period $i-1$ from mortgage size of the previous period $i-1$ to obtain size of the mortgage at current period $i$.

$$x_{i}=x_{i-1}-y_{i-1},\quad i=2,...,n$$

We pay interest each period $i$ based on interest rate and size of the remaining mortgage.

$$z_{i}=x_{i}\cdot r_{i},\quad i=1,2,...,n$$

The total payment on period $i$ consist of installment payment and interest payment.

$$p_{i}=y_{i}+z_{i},\quad i=1,2,...,n$$

We pay the full mortgage during $n$ payment periods.

$$\sum_{i=1}^{n} y_{i}=x$$


## Annuity mortgage
Annuity mortage has fixed total payment each period $p_{1}=p_{2}=...=p_{n}=p.$
Also, we use fixed interest rate $r_{1}=r_{2}=...=r_{n}=r$ for the calculations.
In practice, we should use an interest rate $r$ that we believe to be the highest interest rate during the period, that is, $r_{i} \le r$ for all $i$.

Installment payment on the first period.

$$y_{1}=p-x_{1} \cdot r$$

Installment payment on other periods.

$$\begin{aligned}
y_{i}&=p-x_{i} \cdot r \\
y_{i}&=p-(x_{i-1}-y_{i-1} )\cdot r \\
y_{i}&=(p-x_{i-1}\cdot r) + y_{i-1}\cdot r \\
y_{i}&=y_{i-1} + y_{i-1}\cdot r \\
y_{i}&=(1+r)\cdot y_{i-1},\quad i=2,3,...,n \\
y_{i}=(1+r)^{i-1}\cdot y_{1},\quad i=2,3,...,n
\end{aligned}$$

We pay the full mortgage

$$\sum_{i=1}^{n} y_{i} = (p-x_{1}\cdot r) \cdot \sum_{i=1}^{n} (1+r)^{i-1} = x_{1}$$

We receive the following relationship between the total payment each period and the size of the mortgage.

$$x_{1} = p\cdot \frac{k_{r,n}}{1+k_{r,n}\cdot r}$$

where

$$k_{r,n}=\sum_{i=1}^{n} (1+r)^{i-1}.$$
