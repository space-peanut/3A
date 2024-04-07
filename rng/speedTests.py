s=1
m=10
k=3
a1=2
a2=0
a3=5
s0=[1,0,3]
triplets=[s0]
for i in range(5):
    temp=s0.copy()
    s0[0]=s0[1]
    s0[1]=s0[2]
    s0[2]=(temp[0]*a1+temp[1]*a2+temp[2]*a3)%m
    triplets.append(s0)

print(triplets)