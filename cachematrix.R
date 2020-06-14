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
        #Establece la matriz x en un nuevo vector y
        #Reinicializa la inversa 
        get <- function() x
        #Retorna la matriz x
        setinve <- function(inverse) inve <<- inverse
        #Establece ña inversa
        getinve <- function() inve
        list(set = set, get = get, 
             setinve = setinve, getinve = getinve)
        #Retorna el vector especial
}
############################### Cache Matrix ##################
cacheSolve <- function(x, ...) {
        inve <- x$getinve()     #Llama a la funcion inve del
                                #entorno makeVector
        if (!is.null(inve)) {
                message("getting cached data")
                return(inve)
                #Verifoca si existe la inversa, y la retorna
        }
        data <- x$get()
        inve <- solve(data, ...) #Calcula la inversa
        x$setinve(inve)
        inve
}