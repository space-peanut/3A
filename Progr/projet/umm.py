from ummLib import *
import matplotlib.pyplot as plt
n=100
ts=0.5
tm=0.1

print("######################################################")
mode=input("type de prhase mystere (0:random, 1:rentree par l'utilisateur) : ")

if mode=="0":
    l=int(input("entrez la taille de la phrase mystere : "))
    mp=generateMP(l)
elif mode=="1":
    mp=input("entrez la phrase mystere : ")
else:
    print("erreur de saisie")
    exit()

ng=int(input("entrez le nombre de generations max : "))
n=int(input("entrez la taille de la population : "))
ts=float(input("entrez le taux de selection (standard : 0.5): "))
tm=float(input("entrez le taux de mutation (standard : 0.1) : "))
type=int(input("entrez le type de fitness (1,2 ou 3 (selon le sujet du projet)) : "))

ngInit=ng
l=len(mp)
chroms=generateChromosomes(l,n)
print()

found=False
ngInit=ng
fitness_values = []
while not found and ng>=0:
    try :
        ng-=1
        for i in range (len(chroms)):
            fitness(chroms[i],mp,type)
        if chroms[0][1]==l or (chroms[0][1]==0 and chroms[-1][1]<0):
            found=True
            break
        
        # chroms=reproduct(chroms,mp,tm)
        print("generation {}".format(ngInit-ng))
        chroms= reproduct(chroms,ts,tm)
        fitness_values.append(chroms[0][1])
    except KeyboardInterrupt:
        print(ng)
        break

print("phrase mystere trouvee en {} generations ! \nla phrase mystere est : {}".format(mp,ngInit-ng,chroms[0][0])) if found else print("pas trouve apres {} generations".format(ngInit-ng))
plt.plot(fitness_values)
plt.xlabel('Generation')
plt.ylabel('Fitness')
plt.show()