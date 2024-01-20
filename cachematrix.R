## The following pair of functions can cache the inverse of a matrix

## This first function creates a "matrix", which is a list containing a function
## to set/get the value of a matrix and set/get the value of a inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i 
  list (set = set, get = get, 
        setinverse = setinverse, getinverse = getinverse)
}


## This fucntion checks to see if the inverse has already been calculated.
## If so, it gets from the cache and skip the computation. Otherwise, it
## generates the inverse of the input matrix.


