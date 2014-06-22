## These functions together work as follows: makeCacheMatrix: creates a special "matrix" object
##that can cache its inverse.
## cacheSolve: computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

## This function creates a matrix object. 

makeCacheMatrix <- function(x = matrix()) { ## defines x as matrix
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inv <<- solve
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}



## This function return the inverse of the matrix object, using the cached version if applicable.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse() ## refers to getinverse function
  if(!is.null(inv)) { ## If inverse is cached before, returns the stored value
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}  

