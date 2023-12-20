from ummLib import *
import matplotlib.pyplot as plt
import time
n=100
ts=0.5
tm=0.1
l=25


timeList=[]
for tm in range(11,11):
    tm=tm/100
    try :
        print(tm)
        avgList=[]
        for e in range(5) :
            ng=10000
            ngInit=ng
            mp=generateMP(l)
            chroms=generateChromosomes(l,n)
            found=False
            t=time.time()
            while not found and ng>=0:
                
                ng-=1
                for i in range (len(chroms)):
                    fitness(chroms[i],mp,2)
                if chroms[0][1]==l or (chroms[0][1]==0 and chroms[-1][1]<0):
                    found=True
                    break
                
                chroms= reproduct(chroms,ts,tm)
                
            avgList.append(time.time()-t)
        timeList.append(sum(avgList)/len(avgList))

    except KeyboardInterrupt:
        break

plt.plot(timeList)
plt.xlabel('taille de la population')
plt.ylabel('Temps de calcul')
plt.title('Temps de calcul en fonction du taux de mutation')
plt.show()