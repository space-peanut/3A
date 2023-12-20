from ummLib import *

l=100  
ng=0
n=10
ts=0.5
tm=0.1
mp="1234567890"
chr=["123345540",0]
chrs=[["0987654321",0],["1234547890",0],["1434567890",0],["1243154789",0]]
print("phrase mystere : {}".format(mp))
# print("chromosome 0 : {}".format(chr))

# fitness(chr,mp,1)
# print("chromosome 0 : {}".format(chr[1]))
# fitness(chr,mp,2)
# print("chromosome 0 : {}".format(chr[1]))
# fitness(chr,mp,3)
# print("chromosome 0 : {}".format(chr[1]))
# fitnessBis(chr,mp)
# print("chromosome 0 : {}".format(chr[1]))

print(chrs)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)
reproduct(chrs,ts,tm)
for i in range (len(chrs)):
    fitness(chrs[i],mp,1)

sortByFitness(chrs)
print(chrs)