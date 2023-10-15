import random
import ImagesUtils as img
import numpy as np
from PIL import Image  

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
        print("Error: dir must be '+', '-', '0' or '180'")
        return
    img.display_img(pixels)

def stegano(string, iamgePath):
    if len(string)>50:
        print("string must be not more than 50 characters")
        return 
    if not string.isalpha():
        print("string must be only letters (no space, no punctuation, no numbers nor special characters))")
        return
    
    
    string=string.lower()
    chars=[]
    set=np.ndarray([0])
    for c in string:
        chars.append(ord(c))
    pixels = img.read_img(iamgePath)
    for i in range(len(chars)):
        rand=random.randint(0,2)
        if pixels[i][chars[i]-97][rand] == 0:
            pixels[i][chars[i]-97][rand] +=1
        else:
            pixels[i][chars[i]-97][rand] -=1
    img.write_img(iamgePath[:len(iamgePath)-4]+"_stegano.png",pixels)

def destegano(iamgePath, refPath):
    chars=[]
    string=""
    pixels = img.read_img(iamgePath)
    pixelsRef= img.read_img(refPath)
    diff=pixels-pixelsRef
    for i in range(len(diff)):
        for j in range(len(diff[0])):
            if diff[i][j][2] != 0 or diff[i][j][1] != 0 or diff[i][j][0] != 0:
                chars.append(chr(j+97))
    for i in range(len(chars)):
        string+=chars[i]
    return string

stegano("abcdefghij", "./progr/tp3/TUX.png")
print(destegano("./progr/tp3/TUX_stegano.png", "./progr/tp3/TUX.png"))
stegano("hello", "./progr/tp3/black.png")
print(destegano("./progr/tp3/black_stegano.png", "./progr/tp3/black.png"))