makeCacheMatrix <- function(x = matrix()) { ## defines the function that will cache the inverted matrix result
  m <- NULL ##Initializes m without any data
  set <- function(y) {
      x <<- y ##assigns function results to x
      m <<- NULL
  }
  get <- function() x
  solve <- function(solve) m <<- solve ##inverts the matrix and caches the result on the "solve" object
  getsolve <- function() m
  list(set = set, get = get,
       solve = solve,
       getsolve = getsolve)
}
