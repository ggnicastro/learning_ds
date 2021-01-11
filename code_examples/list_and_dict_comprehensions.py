# coding: utf-8
a = ['a', 'b', 'c', 1, 1.89, [1,2],'z']
b= []
for x in a :
    if isinstance(x,str):
        b.append(x.upper())
  
c = [x.upper() for x in a if isinstance(x,str)]
print(b)
print(c)
# A similar example with dict comprehension
dict1 = {1: 'a', 2: 'b', 3: 'c',  4: 'd', 5:  'e'}
d = {k:v.upper() for (k,v) in dict1.items()}
print(d)
