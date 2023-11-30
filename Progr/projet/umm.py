import random

#ng=nb generations
#l=longueur de la phrase
#lc=longueur d'un chromosome
#n= taille de la population
#ts=taux de selection
#tm=taux de mutation

def generateMP(l):
    """generate random mystery phrase of size size"""  
    phrase = ""
    for i in range(l):
        phrase += chr(random.randint(0, 255))
    return phrase

def generateChromosomes(lc,n):
    """generate n random chromosomes of size lc
    index 0 is the chromosome itself, index 1 is the fitness
    """
    chromosomes = []
    for i in range(n):
        chromosome = ["",0]
        for i in range(lc):
            chromosome[0] += chr(random.randint(0, 255))
        chromosomes.append(chromosome)
    return chromosomes

def correctness(c, index, phrase):
    """return -1 if cher c is present but not well placed, 1 if well placed or 0 if not correct"""
    if c == phrase[index]:
        return 1
    elif c in phrase:
        return 0
    else:
        return -1
    
def fitness(chrom,phrase):
    """return the fitness of the chromosome C"""
    fitness = 0
    for i in range(len(chrom[0])):
        fitness += correctness(chrom[0][i],i,phrase)
    chrom[1] = fitness

def sortByFitness(chromosomes):
    """sort chromosomes by fitness"""
    chromosomes.sort(key=lambda x: x[1], reverse=True)

def select(chromosomes,ts):
    """select the best chromosomes to reproduce"""
    n = int(len(chromosomes)*ts)
    return chromosomes[:n]

def reproduct(chromosomes,target,tm):
    """reproduct the selected chromosomes, with a mutation rate of tm"""
    initSize = len(chromosomes)

    while len(chromosomes) < len(target):
        parent1 = chromosomes[random.randint(0,initSize-1)]
        parent2 = chromosomes[random.randint(0,initSize-1)]
        if parent1==parent2:
            parent2 = chromosomes[random.randint(0,initSize-1)]

        child = ["",0]
        part1=parent1[0][:len(parent1[0])//2]
        part2=parent2[0][len(parent2[0])//2:]
        child[0]=part1+part2

        str=""
        for i in range(len(child[0])):
            if random.random()<tm:
                str+=(chr(random.randint(0, 255)))
            else:
                str+=(child[0][i])
        child[0]=str


        chromosomes.append(child)
    return chromosomes