file = open("2016-2017 Goalie Stats.csv",'r')
f = file.readlines()
file.close()

header = f.pop(0)
country = header.split(',').index("Cntry")
nat = header.split(',').index("Nat")

'''
for i in f:
    print (i)
    temp = i.split(',')
    if (temp[country] != temp[nat]):
        print(temp[country],temp[nat])
        print(temp)
        print("fail")
        break
'''

file1 = open("detailed stats.txt",'w')
file2 = open("player names.txt",'w')

file1.write(header)
for i in f:
    temp = i.split(",")
    file2.write(temp[0])
    file2.write(" ")
    file2.write(temp[1])
    file2.write("\n")
    
    file1.write(i)
    


file1.close()
file2.close()