#
# A program to manipulate variables and affectations.
#

#-------------------------------------------------
# step 1
a = 3
#-------------------------------------------------
b = a * a # b = 9
a = a + b # a = 12
c = a + b # c = 21
b = a / b # b = 1.3333333333333333
d = "co" 
e = a == b # e = False
print("Step 1.\n  a:", a, "\t", type(a),
      "\n  b:", b, "\t", type(b),
      "\n  c:", c, "\t", type(c),
      "\n  d:", d, "\t", type(d),
      "\n  e:", e, "\t", type(e), "\n")

#-------------------------------------------------
# step 2
#-------------------------------------------------
c = a % 5 # c = 2
a = a * b # a = 16
b = a % 5 # b = 1
d = d + "u" # d = "cou"
e = c < a < b # e = False
print("Step 2.\n  a:", a, "\t", type(a),
      "\n  b:", b, "\t", type(b),
      "\n  c:", c, "\t", type(c),
      "\n  d:", d, "\t", type(d),
      "\n  e:", e, "\t", type(e), "\n")

#-------------------------------------------------
# step 3
#-------------------------------------------------
a = d * 2 # a = "coucou"
b = a * c # b = "coucoucoucou"
# c = a/(str(c)) 
d = d+b
# e = a == b or c >= d or e
print("Step 3.\n  a:", a, "\t", type(a), 
      "\n  b:", b, "\t", type(b),
      "\n  c:", c, "\t", type(c),
      "\n  d:", d, "\t", type(d),
      "\n  e:", e, "\t", type(e), "\n")

#-------------------------------------------------
# step 4
#-------------------------------------------------

x=a
a=b
b=x
print("Step 4.\n  a:", a, "\t", type(a),
      "\n  b:", b, "\t", type(b),
      "\n  x:", x, "\t", type(x))