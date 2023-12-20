import math
import random
import Levenshtein

def generateMP(l):
    """
    input : l, the size of the phrase
    output : a string of size l
    generate random mystery phrase of size l
    """  
    phrase = ""
    for i in range(l):
        phrase += chr(random.randint(0, 255))
    return phrase

def generateChromosomes(lc,n):
    """
    input : lc, the size of a chromosome
            n, the number of chromosomes
    output : a list of n chromosomes
    generate n random chromosomes of size lc
    index 0 is the chromosome itself, index 1 is the fitness
    """
    chromosomes = []
    for i in range(n):
        chromosome = ["",0]
        for i in range(lc):
            chromosome[0] += chr(random.randint(0, 255))
        chromosomes.append(chromosome)
    return chromosomes

    
def fitness1(chrom, phrase):
    """
    input : chrom, a chromosome
            phrase, the mystery phrase
    output : the fitness of the chromosome
    Return the fitness of the chromosome chrom using -Σ(|C[i]-PM[i]|), i=1..L"""
    fitness = 0
    for i in range(len(chrom[0])):
        fitness -= abs(ord(chrom[0][i]) - ord(phrase[i]))
    chrom[1] = fitness

def fitness2(chrom, phrase, alpha):
    """
    input : chrom, a chromosome
            phrase, the mystery phrase
    output : the fitness of the chromosome
    Return the fitness of the chromosome chrom using  #match+alpha.#Missed_placed"""
    fitness = 0
    match_count = 0
    misplaced_count = 0

    for i in range(len(chrom[0])):
        if chrom[0][i] == phrase[i]:
            match_count += 1
        elif chrom[0][i] in phrase:
            misplaced_count += 1

    fitness= match_count + alpha * misplaced_count
    chrom[1] = fitness

def fitness3(chrom, phrase):
    """
    input : chrom, a chromosome
            phrase, the mystery phrase
    output : the fitness of the chromosome
    Return the fitness of the chromosome chrom using  -LevenshteinDistance(C,PM)"""
    chrom[1]=-Levenshtein.distance(chrom[0], phrase)

def fitness(chrom, phrase, type, alpha=0.5):
    match type:
        case 1:
            fitness1(chrom, phrase)
        case 2:
            fitness2(chrom, phrase, alpha)
        case 3:
            fitness3(chrom, phrase)

def sortByFitness(chromosomes):
    """
    input : chromosomes, a list of chromosomes
    output : the list of chromosomes sorted by fitness
    sort chromosomes by fitness
    """

    chromosomes.sort(key=lambda x: x[1])

    chromosomes.sort(key=lambda x: x[1], reverse=True)
    return chromosomes

def select(chromosomes,ts):
    """
    input : chromosomes, a list of chromosomes
            ts, the selection rate
    output : the list of chromosomes selected
    select the best chromosomes to reproduce"""
    chromosomes = sortByFitness(chromosomes)
    n = math.floor(len(chromosomes)*ts)
    return chromosomes[:n]

def reproduct(chromosomes,ts,tm):
    """
    input : chromosomes, a list of chromosomes
            ts, the selection rate
            tm, the mutation rate
    output : the list of chromosomes reproduced
    select the best chromosomes to reproduct,
    reproduct the selected chromosomes, with a mutation rate of tm,
    can be parthenogenesis,
    also mutates some chromosomes
    """
    initPopSize = len(chromosomes)
    chromosomes = select(chromosomes,ts)
    print("best chromosome : {}".format(chromosomes[0]))
    newChromosomes = []

    while len(newChromosomes)+len(chromosomes) < initPopSize:
        choose1 = random.randint(0,len(chromosomes)-1)
        choose2 = random.randint(0,len(chromosomes)-1)
        parent1 = chromosomes[choose1]
        parent2 = chromosomes[choose2]
        cut = random.randint(len(parent1[0])//3,2*(len(parent1[0])//3))
        child = [parent1[0][:cut] + parent2[0][cut:],0]
        if random.random() < tm:
            mutation = random.randint(0, len(child[0])-1)
            child[0] = child[0][:mutation] + chr(random.randint(0, 255)) + child[0][mutation+1:]
        newChromosomes.append(child)

    chromosomes+=newChromosomes
    return chromosomes
