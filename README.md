# Mortage calculations
- $n$ : number of payment periods
- $i=1,2,...,n$ : index of an payment period
- $r_{i}$ : interest rate during the period $i$
- $x_{0}$ : size of the mortage
- $y_{0}=0$ : initial installament payment is zero
- $x_{i}$ : size of the mortage at the start of period $i$
- $y_{i}$ : installment payment on period $i$
- $z_{i}$ : interest payment on period $i$
- $p_{i}$ : total payment on period $i$

We subtract the installment payment from previous period $i-1$ from mortage size of the previous period $i-1$ to obtain size of the mortage at current period $i$.

$$x_{i}=x_{i-1}-y_{i-1},\quad i=1,2,...,n$$

We pay interest each period $i$ based on interest rate and size of the remaining mortage.

$$z_{i}=x_{i}\cdot r_{i},\quad i=1,2,...,n$$

The total payment on period $i$ consist of installment payment and interest payment.

$$p_{i}=y_{i}+z_{i},\quad i=1,2,...,n$$

We pay the full mortage during $n$ payment periods.

$$\sum_{i=1}^{n} y_{i}=x_{0}$$

