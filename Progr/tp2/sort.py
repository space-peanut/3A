import random
import timeit
import matplotlib.pyplot as plt

def createDeck(size):
    deck=[]
    for i in range(size):
        deck.append(i)
    random.shuffle(deck)
    return deck


def selectSort(deck: list):
    for i in range(len(deck)):
        min=deck[i]
        minIndex=i
        for j in range(i,len(deck)):
            if deck[j]<min :
                min=deck[j]
                minIndex=j
        deck[i],deck[minIndex]=deck[minIndex],deck[i]
    return deck

def insertSort(deck):
    for i in range(1,len(deck)):
        j=i
        while j>0 and deck[j-1]>deck[j] :
            deck[j-1],deck[j]=deck[j],deck[j-1]
            j-=1
    return deck

def fusion(deck1,deck2):
    if len(deck1)==0 :
        return deck2
    if len(deck2)==0 :
        return deck1
    if deck1[0]<deck2[0] :
        return [deck1[0]]+fusion(deck1[1:],deck2)
    else :
        return [deck2[0]]+fusion(deck1,deck2[1:])
    
def fusionSort(deck):
    if len(deck)==1 :
        return deck
    else :
        return fusion(fusionSort(deck[:len(deck)//2]),fusionSort(deck[len(deck)//2:]))

#complexite empirique
valuesSelect=[]
valuesInsert=[]
valuesFusion=[]
labels=[x for x in range(1,499)]
for i in range(1,499):
    deckSelect=createDeck(i)
    deckInsert=createDeck(i)
    deckFusion=createDeck(i)
    valuesSelect.append(timeit.timeit("selectSort(deckSelect)",number=1,globals=globals()))
    valuesInsert.append(timeit.timeit("insertSort(deckInsert)",number=1,globals=globals()))
    valuesFusion.append(timeit.timeit("fusionSort(deckFusion)",number=1,globals=globals()))

plt.plot(labels,valuesSelect,label="selectSort")
plt.plot(labels,valuesInsert,label="insertSort")
plt.plot(labels,valuesFusion,label="fusionSort")

plt.legend()
plt.show()