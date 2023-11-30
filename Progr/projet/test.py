from umm import *
l=10
ng=0
n=10
ts=0.5
tm=0.1
mp=generateMP(l)
chroms=generateChromosomes(l,n)
print("phrase mystere : {}".format(mp))
print()

found=False
while not found :
    ng+=1
    for i in range (len(chroms)):
        fitness(chroms[i],mp)
    sortByFitness(chroms)
    if chroms[0][1]==l:
        found=True
        break
    
    chroms=select(chroms,ts)
    # chroms=reproduct(chroms,mp,tm)
    reproduct(chroms,mp,tm)

print("trouve en {} ! la phrase mystere est : {}".format(ng,chroms[0][0]))