## This function 'makeCacheMatrix' creates a cache matrix
## It also contains functions to be used in other functions

## Creates Matrix object, im, is the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	
  ## im, inverse matrix, set to null (to initialize)
  ## when null the cacheSolve for inverse will not pull from cache
  im <-NULL
  
  ##set function can change/set matrix to a different value
  ## im is set to null so a cached value will not be pulled
	set <-function(y){
		x<<-y
		im<<-NULL
	}
	
	## returns matrix we are working with
	get<-function()x
	
	##puts a passed value, the inverse matrix, to the im variable 
	setinverse<-function(inverse) im<<-inverse
	
	##returns the inverse matrix
	getinverse<-function() im
	
	##list of functions that makeCacheMatrix creates 
	list(set = set, get = get, 
		setinverse = setinverse,
		getinverse = getinverse)
}


## This following function calculates the inverse of the matrix, 
## created with above function.m

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
	  im <-x$getinverse()
	  
	  ## If the return inverse matrix is null then
	  ## we need to solve
	  if(!is.null(im)){
	    
	    ## it is not null, pull from cache
		  message("getting cached data")
		  
	    ##using return to break from function
	    return(im)  
	  }
	
	## im (inverse matrix) was null, so we make it here to solve 
	
	## get matrix that we will to find inverse  
	data<-x$get()
	
	##get inverse and store to im
	im<-solve(data, ...)
	
	## set inverse function
	x$setinverse(im)
	
	##return solved/inverse matrix
	##this did not come from cache 
	im
}
