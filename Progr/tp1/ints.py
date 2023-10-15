def factor(n) :
    factors=[1]
    i=2
    while n>1 :
        c=0
        while n%i==0 :
            c=c+1
            n=n/i
        for j in range(c):
            factors.append(i)
        i+=1
    return factors

def revInt(a):
    return int(str(a)[::-1])

def euclideBezout(a,b) :
    h=a
    g=b
    r=u=y=1
    v=x=0

    if a<b :
        c=b
        b=a
        a=c

    while r>0 :
        r=a%b
        q=a//b
        s=u-x*q
        u=x
        x=s
        t=v-y*q
        v=y
        y=t
        a=b
        b=r

    return {
        "gcd":a,
        "u":u,
        "v":v
    }

print(euclideBezout(951,159))