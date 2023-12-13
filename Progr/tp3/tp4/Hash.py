import random
import time
import matplotlib.pyplot as plt
import math
#-------------------------------------------
# Hash tables
#-------------------------------------------

d={"chandail":"sweater",
  "medecin":"medic",
  "operation":"operation",
  "offre":"offer",
  "obstacle":"obstacle",}

d["cigogne"]="stork"

def add(mot,word,dict):
    if mot not in dict:
        dict[mot]=word

def delete(char,dict):
    for mot in dict:
      if mot[0]==char:
        del dict[mot]

#-------------------------------------------
# Hash function
#-------------------------------------------

def H1(x):
  hashed=0
  for c in range(len(x)):
    hashed+=ord(x[c])*(256**(len(x)-c-1))
  return hashed

def H2(key,N):
  #precondition: key is an alphanumeric string
  # N is the size of the hashtable
  hashsum = 0
  # For each character in the key
  l = len(key)
  for idx in range(l):
    # Add (index + length of key) ^ (current char ascii code)
    hashsum += (idx + len(key)) ** ord(key[idx])
    # Perform modulus to keep hashsum in range [0, N - 1]
    hashsum = hashsum % N
  return hashsum

def annagram(word1,word2):
  if len(word1)!=len(word2):
     return False
  if H1(word1)%255==H1(word2)%255:
    return True
  return False

# print(annagram("bravo","abrov"))
# print(annagram("bravo","abrova"))
# print(annagram("bravo","abrof"))
# print(annagram("ac","bb"))

#-------------------------------------------
# From scratch
# ------------------------------------------

def creation(N):
  return [[] for i in range(N)]

def ajout(T, cle, val):
  for i in range(len(T[H2(cle,len(T))])):
    if T[H2(cle,len(T))][i][0]==cle:
      T[H2(cle,len(T))][i][1]=val
  T[H2(cle,len(T))].append([cle,val])

def recherche(T,cle):
  hcle=H2(cle,len(T))
  for i in range(len(T[hcle])):
    if T[hcle][i][0]==cle:
      return T[hcle][i][1]
  return None

def rehash(T, N):
  if N <= len(T):
    return
  T2 = creation(N)
  for i in range(len(T)):
    for j in range(len(T[i])):
      ajout(T2, T[i][j][0], T[i][j][1])
  return T2


# t=creation(10)
# ajout(t,"chandail","sweater")
# ajout(t,"medecin","medic")
# ajout(t,"operation","operation")
# ajout(t,"offre","offer")
# ajout(t,"obstacle","obstacle")
# ajout(t,"cigogne","stork")
# print(t)
# ajout(t,"cigogne","patate")
# print(t)

#-------------------------------------------
# evaluation empirique
#-------------------------------------------
f = open('./Progr/tp4/liste.de.mots.francais.frgut.txt', 'r')
dico = f.read().split("\n")

# t=creation(100)
# for i in range(10):
#   ajout(t,dico[i],None)

# print(t)

# print(recherche(t,"abaissable"))

# used to increase in log scale in a for loop
def rangeLog(start, end):
  while start <= end:
    yield start
    start += 10 ** int(math.log10(start))


times = []
timesDict = []
xs = []
for N in rangeLog(10**2, 10**5):
  xs.append(N)
  sumTimes = 0
  sumTimes2 = 0
  print(N)
  for k in range(100):
    table=creation(N)
    for i in range(math.floor(math.sqrt(N))):
      ajout(table,dico[i],None)
    t=time.time()
    recherche(table,dico[random.randint(0,len(dico)-1)])
    t=time.time()-t
    sumTimes += t

  times.append(sumTimes/100)

  
  
  for k in range(100):
    dict={}
    for i in range(math.floor(math.sqrt(N))):
      dict[dico[i]]=None
    t=time.time()
    dict[dico[random.randint(0,math.floor(math.sqrt(N)-1))]]
    t=time.time()-t
    sumTimes2 += t

  timesDict.append(sumTimes2/100)

plt.plot(xs, times)
plt.plot(xs, timesDict)
plt.legend(["from scratch", "python dict"])
plt.xlabel('N')
plt.ylabel('time')
plt.xscale("log")
plt.show()

"""
4.1 anniversaires et collisions
P(au moins une collision) = 1 - P(pas de collision)
P(pass de collision) = Π(i=o -> n+1)((365-i)/365)
"""

def anniv(n):
  return 1 - math.prod([(365-i)/365 for i in range(n+1)])

print(anniv(23))

# il est possible de representer les anniversaires comme une table de hachage {date,[personne1,personne2,...]}

def pCollision(dictSize, entryNumber):
  return 1 - math.prod([(dictSize-i)/dictSize for i in range(entryNumber+1)])

print(pCollision(365, 23))
print(pCollision(875, 40))