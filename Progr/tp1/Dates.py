def enterDay():
    day=int(input("Enter day "))
    
    return day

def enterMonth():
    month=int(input("Enter month "))
    
    return month

def enterYear():
    year=int(input("Enter year "))
    
    return year

year=enterYear()
day=enterDay()
month=enterMonth()

# check validity
if year<1900 or year > 2100 :
    print("Year must be between 1900 and 2100")
    year=enterYear()

if month<1 or month >12 :
    print("Month must be between 1 and 12")
    month=enterMonth()

match month:
    case 1,3,5,7,8,10,12:
        if day<1 or day >31 :
            print("Day must be between 1 and 31")
            day=enterDay()
    case 4,6,9,11:
        if day<1 or day >30 :
            print("Day must be between 1 and 30")
            day=enterDay()
    case 2:
        if year%400==0 or (year%4==0 and year%100!=0):
            if day<1 or day >29 :
                print("Day must be between 1 and 29")
                day=enterDay()
        else:
            if day<1 or day >28 :
                print("Day must be between 1 and 28")
                day=enterDay()

print("The date is {}/{}/{}".format(day,month,year))