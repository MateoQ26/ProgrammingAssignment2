## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

################################ Crea objeto especial ##########
makeCacheMatrix <- function(x = matrix()) {
        inve <- NULL #Inicializa inversa en NULL
        set <- function(y) {
                x <<- y
                inve <<- NULL
        }
        get <- function() x
        setinve <- function(inverse) inve <<- inverse
        getinve <- function() inve
        list(set = set, get = get, 
             setinve = setinve, getinve = getinve)
}
############################### Cache Matrix ##################
cacheSolve <- function(x, ...) {
        inve <- x$getinve()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        inve <- solve(data, ...)
        x$setinve(inve)
        inve
}