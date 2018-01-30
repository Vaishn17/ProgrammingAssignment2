## Put comments here that give an overall description of what your
## functions do
#Using lexical scoping to cache the results of the inverse of a matrix.
## Write a short comment describing this function
##the function here create a "special" matrix that can cache the inverse.

makeCacheMatrix <- function(x = matrix) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inv) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}
##this function calculates the inverse of the matrix if not already calculated.
cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
}









