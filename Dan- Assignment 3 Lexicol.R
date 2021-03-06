## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x-matrix()){
  m <- NULL
  set <- function(y){
    x<<-y
    m<<-NULL
    
  }
  get<- function(){x}
  setInverse <-function(inverse){m<<- inverse}
  getInverse<- function(){m}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  mat<- x$get()
  m <- solve(mat, ...)
  x$setInverse(m)
  m
}