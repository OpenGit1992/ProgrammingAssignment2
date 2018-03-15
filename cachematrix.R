## These functions perform specific actions on a matrix and its inverse.

## makeCacheMatrix contains four functions called get, set, getinverse, and setinverse
## set allows the user to set the matrix he wants to use
## get displays the value set by the set function
## setinverse allows the user set the value that will be displayed as the inverse of the matrix
## getinverse displays the value set by the setinverse function

makeCacheMatrix <- function(x = matrix()) {
j <- NULL
set <- function(y) {
  x <<- y
  j <<- NULL
}
get <- function() x
setinverse <- function(i) j <<- i
getinverse <- function() j
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## cacheSolve accepts a vector assigned with the value of the makeCacheMatrix function
## It then displays a value for the inverse matrix by either running the getinverse function or by computing the inverse using the solve function

cacheSolve <- function(x, ...) {
m <- x$getinverse()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
}
