import numpy as np

#in numpy, column-wise using axis=0 and row-wise using axis=1

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

#access data
print(a[1,2])
print(a[1,-1])
print(a[1,:]) #prints row 1
print(a[:,1]) #prints column 1

#getting data with steps [startIndex,endIndex:stepSize]
a = np.array([[1,2,3,4,5,6,7],[8,9,10,11,12,13,14]])
a[0,1:6:2] #output: [2 4 6]

#change index data
a[1,5] = 20
a[:,2] = [5] #changes column 2 to 5
a[:,2] = [1,2] #chnage column 2 on row 0 to 1 and column 2 on row 1 to 2

#multi dimension array
b = np.array([[[1,2],[3,4]],[[5,6],[7,8]]]) #s dimensions array
print(b[1,1,0]) #output: 7

#create all zero matrix
a = np.zeros((2,3), dtype='int8') #two rows and 3 columns, all zero. dtype is optional

#create all ones matrix
a = np.ones((2,3))

#create mtrix, all indexes are given number
np.full((2,2),99,dtype='float') #2 by 2 matrix, all indexes are 99. dtype is optional
np.full(a.shape,99) #create new matrix with the same shape as a

#create identity matrix (square matrix)
a = np.identity(3)
print(a) #output: [[1. 0. 0.]
                   [0. 1. 0.]
                   [0. 0. 1.]]

#repeat array
arr = np.array([1,2,3])
r1 = np.repeat(arr,3,axis=0)
print(r1) #output: [[1 2 3]
                    [1 2 3]
                    [1 2 3]]
                    
#copy array
b = a.copy()

#mathematics
a = np.array([1,2,3,4])
b = a +,-,*,/,** 5 #do simple math on all items in a

a = np.array([1,2,3,4])
b = np.array([5,6,7,8])
c = a + b

#get sin
np.sin(a)

#matrix multiply
a = np.ones((2,3))
b = np.full((3,2),2)
c = np.matmul(a,b)
print(c) #output: [[6. 6.]
                   [6. 6.]]
                   
#determinant of matrix
c = np.identity(3)
d = np.linalg.det(c)
print(d) #output: 1

#min and max of array
stats = np.array([[1,2,3],[4,5,6]])
np.min(stats)
np.max(stats)
n.sum(stats) #sum of all the elements in the matrix

#reorganizing arrays
before = np.array([[1,2,3,4],[5,6,7,8]])
after = before.reshape((8,1)) #change it to 1 dimention array

#load data from file
filedata = np.genfromtxt('data.txt', delimiter=',') #store numerical data as float
filedata = filedata.astype('int32') #convert stored numerical data to int32

#boolean masking and advanced indexing
filedata > 50 #returns boolean matrix of true or false
filedata[filedata > 50] #returns an array, elements are the ones bigger than 50
datafile2 = np.array((datafile > 4), axis=0)
datafile2 = np.array((datafile > 4) & (datafile < 8)) # ~ means not
