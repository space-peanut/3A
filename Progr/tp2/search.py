import timeit
def searchSeq(word, table) :
    nbComparisons=0
    for i in range(len(table)) :
        nbComparisons+=1
        if table[i]==word :
            return nbComparisons, i
    return nbComparisons,-1
t=[]
for i in range(100) :
    t.append("mot{}".format(i))

f = open('./Progr/tp2/liste.de.mots.francais.frgut.txt', 'r')
d = f.read().split("\n")
def searchDicoRecursive(word, l=d):
    
    if word==l[len(l)//2] :
        return "found"
    elif (len(l)==1) and (word!=l[0]) :
        return "not found"
    if word<l[len(l)//2] :
        return searchDicoRecursive(word,l[:len(l)//2])
    else :
        return searchDicoRecursive(word,l[len(l)//2:])

def searchDicoIt(word, l=d):
    return

print(searchSeq("mot0",t))
print(searchSeq("mot49",t))
print(searchSeq("mot99",t))
print(searchSeq("mot100",t))
t.__contains__("mot0")

print(searchDicoRecursive("aaaaaaaaaaaaaaaaaaaaaaa"))
print(timeit.timeit("searchDicoRecursive('akghjsdf')", setup="from __main__ import searchDicoRecursive", number=1))
