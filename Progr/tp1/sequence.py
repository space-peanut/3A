# lst=input("Enter a list of 10 integers separated by spaces: ").split()
# sum=0
# if len(lst)!=10:
#     print("You must enter 10 integers")
#     exit()
# for i in range(10):
#     sum+=int(lst[i])

# print("Average is {}".format(sum/10))

# # with while
# lst=input("Enter a list of 10 integers separated by spaces: ").split()
# sum=0
# if len(lst)!=10:
#     print("You must enter 10 integers")
#     exit()
# i=0
# while i<10 :
#     sum+=int(lst[i])
#     i+=1

# print("Average is {}".format(sum/10))
# #le for correspond mieux à la situation

# #moyenne pour n entier, liste se finit par -1
# lst =input("Enter a list of integers separated by spaces the la st one must be -1: ").split("-1")[0].split()
# sum=i=0
# while i < len(lst) :
#     sum+=int(lst[i])
#     i+=1

# print("Average is {}".format(sum/len(lst)))

#avec do while

lst =input("Enter a list of integers separated by spaces the la st one must be -1: ").split("-1")[0].split()
for i in range(len(lst)):
    lst[i]=int(lst[i])
sum=i=0

while True :
    if i==len(lst):
        break
    sum+=lst[i]
    i+=1
#do while not suited
# print("Average is {}\n max is {} and min is {}\n The integer {} apears {} times".format(sum/len(lst),max(lst),min(lst),lst[0],lst.count(lst[0])))
# monotony
lst2=[]
previous=int(lst[0])
lstTemp=[previous]
for i in range(1,len(lst)):
    actual = int(lst[i])
    if actual>previous :
        lstTemp.append(actual)
    else :
        lst2.append(lstTemp)
        lstTemp=[actual]

    previous=actual
lst2.append(lstTemp)

while True :
    action = input("a. afficher la moyenne \nb. afficher le minimum \nc. afficher le maximum \nd. afficher le nombre d'occurences du 1er entier \ne. afficher le nombre de monotonies \nq. quitter\n")
    match action :
        case "a" :
            print("average is {}".format(sum/len(lst)))
        case "b" :
            print("min={}".format(min(lst)))
        case "c" :
            print("max={}".format(max(lst)))
        case "d":
            print("{} appears {} times".format(lst[0],lst.count(lst[0])))
        case "e":
            print("there are {} monotonies".format(len(lst2)))
        case "q" :
            break