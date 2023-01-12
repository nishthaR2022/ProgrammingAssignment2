## This Code is written to get the inverse of Matrix
## Contains 2 Functions : makeCacheMatrix and CacheSolve

## Function to get the Inverse Functions List

makeCacheMatrix <- function(x = matrix()) {
  
  ## Initailze the Matrix
  m <- NULL
  
  ## Function to set Matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ##Function to  get the matrix 
  get <- function() x
  
  ##Function to set the Inverse of Matrix
  setInverse <- function(Inverse) m <<- inverse
  
   ##Function to get the Inverse of Matrix
  getInverse <- function() m
  
  ##Return the List of Functions
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Function to get the Inverse using R PRogramming , Solve Method

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  ## Just return the inverse if already exists
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
   ## Get the matrix from our object
  data <- x$get()
  
  ##Get the Inverse using Solve function
  m <- solve(data,...)
  
  ##Set the inverse value 
  x$setInverse(m)
  
  ##Return Inverse Matrix
  m
}
