import operator

print("File Name: ")
file_name = input()

file = open(file_name,'r')
data = file.read().split()
words = {}

for word in data:
    if word in words:
        words[word] += 1
    else:
        words[word] = 1

file.close()

sorted_words = sorted(words.items(), key=operator.itemgetter(1))
sorted_words.reverse()

i = 5
if len(sorted_words) < 5:
    i = len(sorted_words)
    
for n in range(i):
    print(str(sorted_words[n][0])+" : "+str(sorted_words[n][1]))
    
