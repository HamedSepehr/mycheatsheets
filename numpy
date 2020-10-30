import numpy as np

a = np.array([1,2,3])
a = np.array([1,2,3], dtype='int8')
b = np.array([[9.1,8.2,7.3],[1.9,2.8,3.7]])

print(b[1][2])

#get number of dimensions
b.ndim #output: 2

#get shape (dimension size)
b.shape #output: (2, 3)

#get type
b.dtype #output: dtype('float64')
a.dtype #output: dtype('int8')

#get size, total number of elements of the array
b.size #output: 6
a.size #output: 3

#get item size,  size in bytes of each element of the array
a.itemsize #output: 1
b.itemsize #output: 8

#size of array in byte (a.itemsize * a.size)
a.nbytes
