## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- function(x, ...) {
inv <- x$getinverse()

if (!is.null(inv)) {
message("getting cached inverse")
return(inv)
}

data <- x$get()
inv <- solve(data, ...)
x$setinverse(inv)
inv
}
# Create a matrix
mat <- matrix(c(2, 1, 1, 2), 2, 2)

# Create the cache matrix object
cm <- makeCacheMatrix(mat)

# First time: computes and caches the inverse
cacheSolve(cm)

# Second time: retrieves from cache
cacheSolve(cm)
