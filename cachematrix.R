## These functions together work as follows: makeCacheMatrix: creates a special "matrix" object
##that can cache its inverse.
## cacheSolve: computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

## This function creates a matrix object. 

makeCacheMatrix <- function(x = matrix()) {

}


## This function return the inverse of the matrix object, using the cached version if applicable.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
