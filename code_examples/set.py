# coding: utf-8
# Creating two set objects from two different list.
a = [1,1,2,3,3,4]
b = [0,2,2,4,5,5]
a_set = set(a)
b_set = set(b)
#checking the difference between set and list.
print(a)
print(a_set)
print(b)
print(b_set)
# some set operation.
#Union
print(a_set|b_set)
# Intersection
print(a_set & b_set)
# Difference (Note that the order matters here)
print(a_set - b_set)
print(b_set - a_set)
#Symmetric difference
print(b_set ^ a_set)
