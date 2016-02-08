makeCacheMatrix <- function( m = matrix() ) {

	## Initialize the inverse property
    i <- NULL
set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }
    ## Method the get the matrix
    get <- function() {
    	## Return the matrix
    	m
    }
## Way to set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Way to get the inverse of the matrix
    getInverse <- function() {
        ## Back the inverse property
        i
    }
## Back a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}
## Compute the inverse of the unique matrix back by "makeCacheMatrix"
## Back to a matrix  “m”
    m <- x$getInverse()
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    ## Compute the inverse via matrix multiplication
    m <- solve(data) %*% data
## Set the inverse to the object
    x$setInverse(m)
## Coming back the matrix
    m
}


