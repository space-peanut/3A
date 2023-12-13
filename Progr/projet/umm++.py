from ummLib import *
l=10#taille de la phrase mystere
ng=0#nombre de generations
n=10#taille de la population
ts=0.5#taux de selection
tm=0.1#taux de mutation

mp=generateMP(l)
chroms=generateChromosomes(l,n)
print("phrase mystere : {}".format(mp))
print()

found=False
while not found :
    ng+=1
    for i in range (len(chroms)):
        variableFitness(chroms[i],mp)
    variableSortByFitness(chroms)
    if chroms[0][1]==l:
        found=True
        break
    
    chroms=variableSelect(chroms,ts)
    # chroms=reproduct(chroms,mp,tm)
    variableReproduct(chroms,mp,tm)

print("trouve en {} ! la phrase mystere est : {}".format(ng,chroms[0][0]))