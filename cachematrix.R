## Programming assignment #2 for R Programming class - Coursera
## Cachematrix.R file
## 2 functions that cashe the inverse of a mtrix

## makeCacheMatrix:  This function creates a special "matix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        matcache <- NULL             ##initialize matcache
        set <- function(y) {         ## setup the matcache in working environment
                x <<- y
                matcache <<- NULL
        }
        ## get value of matrix
        get <- function() x          
        ## invert the matrix 
        setmatrix <- function(inverse) matcache <<- inverse
        ## get the inverted matrix from matcache
        getinverse <- function() matcache
        
        # return the created functions to the working environment
        list(set = set, get = get,
             setmatrix = setmatrix,
             getinverse = getinverse)
}


## cacheSolve:  This function computes the inverse of the special"matrix" returned by
## makeCacheMatrix above.  If the inverse has already been calculated and the matrix has
## not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matcache <- x$getinverse()
        ## return cached inverted matrix if it exists
        ## otherwise create the matrix in the working environment
        if(!is.null(matcache)) {
                message("getting cached data")
                return(matcahe)
        }
        ## create the matrix - does not exist already
        mat <- x$get()
        matcache <- solve(mat, ...)
        x$setmatrix(matcache)
        matcache
}
