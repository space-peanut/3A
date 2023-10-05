import numpy as np
def productMatrix(A,B):
    op=int(0)
    C = np.zeros((len(A),len(B[0])))
    for i in range(len(A)):
        for j in range(len(B[0])):
            for k in range(len(B)):
                C[i][j] += A[i][k]*B[k][j]
                op+=2
    return C,op    
    
# create 2 random matrix
A = np.random.randint(0,10,(3,3))
B = np.random.randint(0,10,(3,3))

print("AxB = \n{}\n validation : \n{}\n number of elementary operations = {}".format(productMatrix(A,B)[0],np.dot(A,B),productMatrix(A,B)[1]))