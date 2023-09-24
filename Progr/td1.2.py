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

max = 1000000
a = 2
labels = [x for x in range(max)]
values = [Puissance(a,x) for x in range(max)]
values2 = [mult(a,x) for x in range(max)]
plt.plot(labels, values, values2)
plt.show()