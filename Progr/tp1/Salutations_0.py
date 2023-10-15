#
# A short program to say hello
#

# display a message and wait for the user's reply
name = input("What's your name ? ")
age = int(input("How old are you ? "))

# display the hello message
print("Hello, {}. You are {} years old\nIn 20 years you will be {}.".format(name, age, age+20))

