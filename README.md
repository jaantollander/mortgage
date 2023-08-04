# Mortage calculations
Symbols

- $n$ : number of installment periods
- $i\in\{1,2,...,n\}$ : index of an installment period
- $r_{i}$ : interest rate on the installment period
- $x_{0}$ initial loan amount
- $y_{0}=0$ initial payment is zero
- $x_{i}$ amount of loan
- $y_{i}$ installment payment
- $z_{i}$ total payment

Equations

For all $i\in\{1,2,...,n\}$

$$x_{i}=x_{i-1}-y_{i-1}$$

$$p_{i}=y_{i}+z_{i}$$

$$z_{i}=x_{i}\cdot r_{i}$$

$$\sum_{i=1}^{n}y_{i}=x_{0}$$

