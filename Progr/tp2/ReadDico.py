
f = open('liste.de.mots.francais.frgut.txt', 'r')
dico = f.read().split("\n")
f.close
for word in dico:
    print(word)
