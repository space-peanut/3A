import sys
def searchSeq(word, table) :
    nbComparisons=0
    for i in range(len(table)) :
        nbComparisons+=1
        if table[i]==word :
            return nbComparisons, i
    return nbComparisons,-1

f = open('./Progr/tp2/liste.de.mots.francais.frgut.txt', 'r')
d = f.read().split("\n")
f.close()
f = open('./Progr/tp2/liste.de.mots.francais.frgut.sans-accent.txt', 'r')
d2 = f.read().split("\n")
def searchDicoRecursive(word, l=d):
    
    if word==l[len(l)//2] :
        return True
    elif (len(l)==1) and (word!=l[0]) :
        return False
    if word<l[len(l)//2] :
        return searchDicoRecursive(word,l[:len(l)//2])
    else :
        return searchDicoRecursive(word,l[len(l)//2:])

def searchStrInStr(container, contained):
    firstIndex=None
    if len(contained)>len(container) :
        return False, firstIndex
    k=0
    for i in range(len(container)):
        if container[i]==contained[k] :
            if k==0 :
                firstIndex=i
            k+=1
            if k==len(contained) :
                return True,firstIndex
        else :
            k=0
            firstIndex=None
        if k!=len(contained) and i==len(container)-1 :
            return False,firstIndex

def replaceStr(container, replaced,replaceing,howMany=sys.maxsize):
    if howMany==0 :
        return container
    (present,index)= searchStrInStr(container,replaced)
    if  not present or replaced==replaceing  :
        return container
    container=container[:index]+replaceing+container[index+len(replaced):]
    return replaceStr(container,replaced,replaceing,howMany=howMany-1)
