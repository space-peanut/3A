import networkx as nx
import numpy as np
import matplotlib.pyplot as plt
#magic
import warnings
warnings.filterwarnings('ignore')


B=np.array([[0,1,0,0,0],[1,0,1,1,0],[0,1,0,1,0],[0,1,1,0,1],[0,0,0,1,0]])
def excentricity(A):
    """
    Return some informations about an adjacency matrix.

    :param A: the adjacency matrix
    :type A: a matrix (two dimensionnal array) containing only integers
    :return: the list of excentricities (list of int), the diameted (int) and the radius (int)
    :rtype: array of int,int, int,
    """
    k=1
    ex=np.zeros(A.shape[0])
    C=np.identity(A.shape[0])+A
    while True :
        for i in range(C.shape[0]):
            if not C[i].__contains__(0):
                ex[i]=k
        k+=1
        C+=np.linalg.matrix_power(A,k)
        if not C.__contains__(0):
            break

    return [ex,ex.max(),ex.min()]

print(excentricity(B))