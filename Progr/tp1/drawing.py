size=int(input("enter size of drawing: "))

for i in range(size) :
    print(size*"* ")

print()

for i in range(size):
    print((i+1)*"* ")

print()

for i in range(size+1):
    print((size-i)*"  ",(2*i-1)*"* ")

print()

for i in range(size+1):
    print((size-i)*"  ",(2*i-1)*"* ")
while i > 0 :
    i-=1
    print((size-i)*"  ",(2*i-1)*"* ")

print()

for i in range(size):
    if i==0 or i==size-1:
        print(size*"* ")
    else :
        print("* ",(size-3)*"  ","* ")

print()

for i in range(size):
    print(i*"  ", (size-1)*"* ")