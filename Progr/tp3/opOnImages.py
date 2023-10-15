import ImagesUtils as img
import numpy as np

def transpose(array):
    if array.ndim != 2:
        return("Error: array must be 2D")
    transposed = np.zeros(array.shape)
    for i in range(len(array)):
        for j in range(len(array[0])) :
            transposed[j][i] = array[i][j]
    return transposed
def greyscale(path):
    pixels = img.read_img(path)
    for i in pixels:
        for j in i:
            c=0.299*j[0]+0.587*j[1]+0.114*j[2]
            j[0]=j[1]=j[2]=c
    img.write_img(path[:len(path)-4]+"_grey.png",pixels)
    img.display_img(pixels)

# for code efficiency reasons, i will use numpy's transposed instead of mine
def rotate(path, dir):
    pixels = img.read_img(path)
    print(pixels)
    if dir=="-":
        pixels=img.read_img(path).transpose(1,0,2)[::-1]
        img.write_img(path[:len(path)-4]+"_rotated-90.png",pixels)
    elif dir=="+":
        pixels=img.read_img(path).transpose(1,0,2)[:,::-1]
        img.write_img(path[:len(path)-4]+"_rotated+90.png",pixels)
    elif dir=="0":
        pixels=img.read_img(path)
        img.write_img(path[:len(path)-4]+"_rotated-0.png",pixels)
    elif dir=="180":
        pixels=img.read_img(path)[::-1,::-1]
        img.write_img(path[:len(path)-4]+"_rotated-180.png",pixels)
    else:
        print("Error: dir must be '+' or '-'")
        return
    img.display_img(pixels)

def steno(string):
    if len(string)==50:
        return "string is too long"
    if not string.isalpha():
        return "string must contain only letters"
    string=string.lower()

arr = np.array([[1,2,3],[4,5,6],[7,8,9]])
print(transpose(arr))
print(arr.transpose())