from ummLib import *
l=10#taille de la phrase mystere
ng=1000#nombre de generations
n=10#taille de la population
ts=0.5#taux de selection
tm=0.1#taux de mutation
ngInit=ng

mp=generateMP(l)
chroms=generateChromosomes(l,n)
print("phrase mystere : {}".format(mp))
print()

found=False
while not found and ng>=0 :
    for i in range (len(chroms)):
        fitness(chroms[i],mp,2)

    chroms=reproduct(chroms,ts,tm)
    ng-=1

    if chroms[0][1]==l:
        found=True
    if chroms[0][1]==0 and chroms[-1][1]<0 :
        found=True

if found:
    print("trouve en {} ! la phrase mystere est : {}".format(ngInit-ng,chroms[0][0]))
else:
    print("pas trouve apres {} generations".format(ngInit))