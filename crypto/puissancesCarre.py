import math

x=int(input("entrez x"))
k=int(input("entrez k"))
n=int(input("entrez n"))

t=round(math.log(k)/math.log(2))
swp=x
for i in range(1,t):
    print("i:{},2^i:{},y:{}".format(i,2**i,y))
    y=(swp**2)%n
