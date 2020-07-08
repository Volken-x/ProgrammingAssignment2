## Put comments here that give an overall description of what your
## functions do
# the code bellow are to functions that should inverse the given matrix and store the result in the cache

## Write a short comment describing this function

#the  'makeCacheMatrix' should create a special "matrix" object stored in cache as the inverse of the given matrix
#Given that "solve" function gives the inversed matrix:

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
}


## Write a short comment describing this function

# While 'cacheSolve' is a function to compute the inverse of the given matrix by the `makeCacheMatrix` function. Conditionally,if the inverse has
#already been calculated (and the matrix has not changed), then the `cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
+   ## Return a matrix that is the inverse of 'x'
+   inv <- x$getInverse()
+     mat <- x$get()
+   inv <- solve(mat, ...)
+   x$setInverse(inv)
+   inv } 



## Example:
# create the invertible matrix using makeCache Matrix
test_matrix <- makeCacheMatrix(matrix(c(1,0,0,2,1,0,3,4,1), 3, 3))

#Get the matrix with
test_matrix$get()

#Use cacheSolve to obtain test_matrix inverse
cacheSolve(test_matrix)
