##Programming Assignment 2 - Lexical  Scoping

## This is file is part of the R-Programming Homework Assignment two - 
## We've been asked to create two functions -  Write the following functions: 

## makeCacheMatrixwhich creates a special "matrix" object that can cache its inverse.
## cacheSolve which computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.


makeCacheMatrix <- function(vec){
  M1 <<- matrix(vec,nrow(vec),ncol(vec))
  print("Original Matrix")
  print(M1)
  I1 <<- solve(vec)
  print("Inverse Matrix")
  print(I1)
  print("Cash me Ousside")
}

cacheSolve <- function(vec){
  x <<- M1
  y <<- I1
  
  x<- matrix(x)
  vec <- matrix(vec)
  if(identical(x,vec)){
    print("Inverse was Already Cached")
    print(" ")
    print("Inverse Matrix")
    return(y)
  } else {
    makeCacheMatrix(vec)
    }
}