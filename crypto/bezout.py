h=a=int(input("entrez a = "))
g=b=int(input("entrez b = "))
r=u=y=1
v=x=0

print("|D|q|d|r|\n|----|----|---|---|" )

if a<b :
    c=b
    b=a
    a=c

while r>0 :
    r=a%b
    q=a//b
    print("|{}|{}|{}|{}|".format(a,q,b,r))
    s=u-x*q
    u=x
    x=s
    t=v-y*q
    v=y
    y=t
    a=b
    b=r

print("\nPGCD({},{})={}".format(g,h,a))
print("Coef Bezout: \nu={} \t v={}".format(u,v))