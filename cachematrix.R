## This function 'makeCacheMatrix' creates a matrix
## It also contains functions to be used in other function

## Creates Matrix object, im, is the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	im <-NULL
	set <-function(y){
		x<<-y
		im<<-NULL
	}
	get<-function()x
	setinverse<-function(inverse) im<<-inverse
	getinverse<-function() im
	list(set = set, get = get, 
		setinverse = setinverse,
		getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
