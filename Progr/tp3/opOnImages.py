import ImagesUtils as img

def greyscale(path):
    pixels = img.read_img(path)
    for i in pixels:
        for j in i:
            c=0.299*j[0]+0.587*j[1]+0.114*j[2]
            j[0]=j[1]=j[2]=c
    img.write_img(path[:len(path)-4]+"_grey.png",pixels)
    img.display_img(pixels)

def rotate(path, dir):
    # rewrite transpose()
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

                