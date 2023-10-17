# import numpy package
import numpy as np
 
# create an numpy array 
a = np.array([1, 2, 3, 4, 8, 6, 7, 3, 9, 10])
 
# display index value of 3
print("All index value of 3 is: ", np.where(a == 3))
 
print("First index value of 3 is: ",np.where(a==3)[len(a)//2][0])
