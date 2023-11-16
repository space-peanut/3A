import random


def generateMP(size):
    """generate random mystery phrase of size size"""  
    phrase = ""
    for i in range(size):
        phrase += chr(random.randint(0, 255))
    return phrase


def correctness(c, index, MP):
    """return -1 if cher c is present but not well placed, 1 if well placed or 0 if not correct"""
    if c == MP[index]:
        return 1
    elif c in MP:
        return -1
    else:
        return 0
    
