#NOTES OF RUNNING SIMPLE TEST CASE

##Creating a test matrix

> seq1 <- seq(1:4)
> testmatrix<-matrix(seq1, 2)

## x is now the cachedMatrix with function

> x<-makeCacheMatrix(testmatrix)
> cacheSolve(x)

## Expected output that is not cached

     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5


> cacheSolve(x)

## Expected output when called again, its is cached

getting cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

## Creating another test matrix since we haven't tested "set" function

> seq2<-c(5,6,7,8)
> settest<-matrix(seq2, 2)

## test set command, remember x is the cachedMatrix

> x$set(settest)

## now checking caching, first call to function should not pull from cache

>cacheSolve(x)

     [,1] [,2]
[1,]   -4  3.5
[2,]    3 -2.5


> cacheSolve(x)
getting cached data

     [,1] [,2]
[1,]   -4  3.5
[2,]    3 -2.5
 

