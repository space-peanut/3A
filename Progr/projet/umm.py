import random


def generateMP(size):
    """generate random mystery phrase of size size"""  
    phrase = ""
    for i in range(size):
        phrase += chr(random.randint(0, 255))
    return phrase


def check(C, PM):
    """check if the guess is correct"""
    if C == PM:
        return True
    