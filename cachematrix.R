## The functions below create a matrix and cache its inverse

## The first function,makeCacheMatrix function creates a matrix,but is a list 
##containing a function to set and get the value of the matrix and can cache 
##its inverse


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## This second function computes the inverse of the matrix returned by the first function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m <- x$getinv()
     if(!is.null(m)) {
       message("getting cached data")
        return(m)
}
  data <- x$get()
  m <- solve(x)
  x$setinv(m)
  m
}
