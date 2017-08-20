## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

1)
#Creating a matrix that can be inverted and stored in the cache.
#As per the example submitted for a vector, this function:
#- sets and gets the value of the matrix
#- and then sets and gets its inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function (y) {
		x <<- y
		inv <<- NULL
	}
	get <- function ()x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


2)
#This function first inverts the matrix created before in makeCacheMatrix. If this has been calculated before, it will get the inverted matrix from the cache.

cachesolve <- function(x,...) {
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message ("waiting - getting cached data")
		return (inv)
	}
	data <- x$get()
	inv <- solve (data)
	x$setinverse(inv)
	inv



