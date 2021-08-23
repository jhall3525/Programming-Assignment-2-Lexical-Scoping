##Programming Assignment 2 - Lexical  Scoping

## This is file is part of the R-Programming Homework Assignment two - 
## We've been asked to create two functions -  Write the following functions: 

## makeCacheMatrixwhich creates a special "matrix" object that can cache its inverse.

## cacheSolve which computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

## Start of makeCahceMatrix

 makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     
     #set the value of the matrix
     set <- function(y) {
         x <<- y
         m <<- NULL
     }
     
     #get the value of the matrix
     get <- function() x
     
     #set the value of the inverse of a matrix
     setinverse <- function(inverse) m <<- inverse
     
     # get the value of the inverse of a matrix
     getinverse <- function() m
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
 }

## Start of cacheSolve

 cacheSolve <- function(x, ...) {
     
     ## Return a matrix that is the inverse of 'x'
     m <- x$getinverse()
     if(!is.null(m)) {
         message("getting cached data")
         return(m)
     }
     data <- x$get()
     
     # calculate the inverse of a matrix
     m <- solve(data, ...)
     
     x$setinverse(m)
     m
}
