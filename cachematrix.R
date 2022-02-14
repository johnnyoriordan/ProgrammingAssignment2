## These functions cache the inverse of a matrix

## Creates a matrix that can cache it's inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set function(y){
            x <<- y
            inv <<- NULL
      }
      
      get <- function()x
      setinverse <- fucntion(inverse) inv <<- inverse
      getinverse <- function() inv
      
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## Returns the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        inc <- x$getinverse()
        if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
        }
        
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
}
