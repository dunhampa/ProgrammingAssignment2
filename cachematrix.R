## This function 'makeCacheMatrix' creacacacs a matrix
## It also contains functions to be used in other function

## Creates Matrix object, im, is the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	im <-NULL
	set <-function(y){
		x<<-ymac
		im<<-NULL
	}
	get<-function()x
	setinverse<-function(inverse) im<<-inverse
	getinverse<-function() im
	list(set = set, get = get, 
		setinverse = setinverse,
		getinverse = getinverse)
}


## This following function calculates the inverse of the matrix, 
## created with above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  im <-x$getinverse()
	  if(!is.null(im)){
		message("getting cached data")
		return(im)  
	}
	data<-x$get()
	im<-solve(data, ...)
	x$setinverse(im)
	im
}
