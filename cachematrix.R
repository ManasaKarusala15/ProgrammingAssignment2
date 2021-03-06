## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function creates a matrix that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set<- function(y){
	x<<- y
	inverse <<- NULL
}
get <- function() x
setinverse <- function(solveMatrix)
inverse <<- solveMatrix
getinverse <- function() inverse
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
##this returns a matrix that is inverse of x created above.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<- x$getinverse()
        if(!is.null(inverse)){
        	message("getting cached data")
        	return(inverse)
        }
        data<-x$get()
        inverse<-solve(data)
        x$setinverse(inverse)
}
