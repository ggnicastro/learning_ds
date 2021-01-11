# coding: utf-8
import numpy as np
a = np.random.randint(4,size=10)
b = a[2:6]
#Note that the left part of the slice are inclusive, but the right not
print(b)
