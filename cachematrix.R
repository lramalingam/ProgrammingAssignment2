## Put comments here that give an overall description of what your
## functions do
## This function creates a special matrix that can cache its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)

}


## Write a short comment describing this function
## this function is responsible about returning a matrix that is inverse of x
## check first if it is cached, if not cached return the inverse


cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached matrix data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
