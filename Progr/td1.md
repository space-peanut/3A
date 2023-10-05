# 1.
```
def sumArray(float []A, int n):
# pre-condition : A[0:n-1] is a float array of size n >= 1
# post-condition : return a float value equal to the sum of the elements of A
    int i <- 1
    float sum <- A[0]
    while i < n:
        sum <- sum + A[i]
        i <- i + 1
    return sum
```

(sum=sum(k=0,i-1,A[k])) and (1<=i<=n)

| step | i | sum |
| -| -| - |
| 0 | 1 | (sum=sum(k=0,i-1,A[k]))=A[0] |
| 1 | 1 | A[0] |
| 2^l=1^ | 2 |(sum=sum(k=0,i-1,A[k]))=A[0]+A[1]  |
| 3^l=2^ | 2 | A[0]+A[1] |
| ... | ... |... |
| x^l=n-2^ | n-1 | (sum=sum(k=0,i-1,A[k]))=A[0]+A[1]+...+A[n-1] |
|  x+1^l=n-1^| n-1 | A[0]+A[1]+...+A[n-1] |

# 2.
```
float Puissance(float a, int n):
    float x <- 1.0
    for i <- 1 to n
        x <- x * a
    return x
```
## 2.1
post condition : x=a^n^
##2.2
f(i)=n-1


## 2.4
```
```py
x=float(1)
a=int(input("enter A "))
n=int(input("enter exponant "))
for i in range(n) :
    x=x*a
print(x) 
```

## 2.4
complexité lineaire car juste un for et for est en O(n)

|step| i | x |
|-|-|-|
|0|n/a|1|
|1|1|a|
|2|2|a^2^=a^i^|
|...|...|...|
|k|n|a^i^=a^n^|

# 3
## 3.1
renvoie x*y

## 3.2

- x est un entier
- x > 0
- x decroissant

## 3.3

x_i_`*`y_i_`*` = x_n_`*`y_n_ + prod
