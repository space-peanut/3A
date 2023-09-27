# import time
# import matplotlib.pyplot as plt
# def puissance(a,n) :
#     f=int(1)
#     for i in range(n) :
#         d=time.time()
#         f=f*a
#         return time.time()-d
    
# def puissance(a,n) :
#     f=int(1)
#     for i in range(n) :
#         d=time.time()
#         f=f*a
#         return time.time()-d

# def multiply(a,n) :
#     f=int(0)
#     for i in range(n) :
#         d=time.time()
#         f=f+a
#     return time.time()-d

# max = 1_000_000

# a = 2
# labels = [x for x in range(max)]
# values = [puissance(a,x) for x in range(max)]
# plt.plot(labels, values)
# values = [multiply(a,x) for x in range(max)]
# plt.plot(labels, values)
# plt.show()
import time
import matplotlib.pyplot as plt
import random

def Puissance(a, n):
    d=time.time()
    x=1.0
    for i in range(1,n+1):
        x=x*a
    return time.time()-d

def mult(a, n):
    d=time.time()
    x=0.0
    for i in range(1,n+1):
        x=x+a
    return time.time()-d

def multSpeed(x, y):
    list = []
    for i in range(1,100):
        d=time.time()   
        prod=0
        while x>0:
            if x%2==1:
                prod=prod+y
            n=y+y
            x=x//2
        list.append(time.time()-d)
    return sum(list)/len(list)

max = 10000
a = random.randint(1,100)
labels = [x for x in range(max)]
# values = [Puissance(a,x) for x in range(max)]
# values2 = [mult(a,x) for x in range(max)]
values = [multSpeed(a,x) for x in range(max)]
plt.plot(labels, values)
plt.show()

