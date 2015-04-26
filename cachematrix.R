## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       N <- NULL
        set <- function(y) {
                x <<- y
                N <<- NULL
        }
        get <- function() x
        setInverseMatrix <- function(inverseMatrix) N <<- inverseMatrix
        getInverseMatrix <- function() N
        list(set = set, get = get,
             setInverseMatrix = setInverseMatrix ,
             getInverseMatrix = getInverseMatrix )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                ## Return a matrix that is the inverse of 'x'
        N <- x$getInverseMatrix ()
        if(!is.null(N)) {
                message("getting cached data")
                return(N)
        }
        data <- x$get()
        N <- solve(data, ...)
        x$setInverseMatrix (N)
        N
}
