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

def searchDico(word):
    found = False
    prev=len(t)
    i=len(t)//2
    while not found :
        print(i)
        if t[i]==word :
            return i
        if word<t[i] :
            i-=(i-prev)//2
        else :
            i+=(prev-i)//2
        prev=i



print(searchSeq("mot0",t))
print(searchSeq("mot49",t))
print(searchSeq("mot99",t))
print(searchSeq("mot100",t))

print(searchDico("mot99"))
print(searchDico("nnnnn"))
