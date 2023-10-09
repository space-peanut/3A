from search import * # importe les algorithmes de recherche de la partie precedente
def pyraimid(oldWord) :
    newWord=word=str(input("Enter a word : "))
    for i in range(len(oldWord)) :
        word=replaceStr(word,str(oldWord[i]),"",1) #replace str utilise une recherche sequentielle
    if len(word)!=1 :
        return "Game over"
    if not (searchDicoRecursive(newWord) or searchDicoRecursive(newWord,d2)) :
        return "Game over"
    return pyraimid(newWord)