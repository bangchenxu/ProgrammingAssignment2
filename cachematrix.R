## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()) {
    m <- NULL
    get <- function() x
    setImatrix <- function(Imatrix) m <<- Imatrix
    getImatrix <- function() m

    # return a list
    list(get=get, setImatrix=setImatrix, getImatrix=getImatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x) {## Return a matrix that is the inverse of 'x'
    m <- x$getImatrix()
    if(!is.null(m)){
        message("Getting result")
        return(m)
    }
    else {
        message("wrong...")
        data <- x$get() 
        m <- solve(data)
        x$setImatrix(m) 
        message("Done.")
        return(m)
    }
}
