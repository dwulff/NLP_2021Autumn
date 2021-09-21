# 1. Vector and list indexing --------------

# a vector and a list
vec <- c(1, 3, 4, 17)
lst <- list(vec, vec * 2, vec * 3)

# select second element from vector
vec[2]

# select second element (on list level) from list
lst[2]

# select content of second element
lst[[2]]
lst[2][[1]]

# 2. Logical statements --------------

# are elements larger than ten
vec > 10

# larger than or equal four
vec >= 4

# larger than or equal four in two logical statements
vec > 4 | vec == 4

# this will always be FALSE
vec > 4 & vec == 4

# 3. for-loops --------------

# for(WHAT WE ITERATE OVER){CODE THAT'S TO BE REPEATED}

# print numbers from 1 to 10
any_object_with_multiple_elements <- 1:10
for(any_variable_name in any_object_with_multiple_elements){
  # secretely: any_variable_name <- any_object_with_multiple_elements[current_iteration]
  print(any_variable_name)
}

# print numbers from 1 to 10
for(i in 1:length(vec)){
  # secretely: i <- (1:length(vec))[current_index]
  # inside the curly brackets use any code you like
  # all of the code will be run before the next iteration
  print(i)  
  i <- i + 4
  print(i)
  cat('\n')
}

# 4. Matrix algebra (dot, outer) --------------

# create matrix with nrow rows and ncol columns containing NAs
mtrx <- matrix(nrow = 4, ncol = 6)

# create matrix with nrow rows and ncol columns containing 0s
mtrx <- matrix(0, nrow = 4, ncol = 6)

# populate second row
mtrx[2, ] <- c(1, 4, 6, 3, 6, 1)

# populate third column
mtrx[, 3] <- c(2, 5, 2, 1)

# dot product aka scalar product aka linear kombination
# a dot b = a1 * b1 + a2 * b2 + ... + an + bn

# matrix of dot product for all combinations of 
# rows in the orginal matrix
mtrx %*% t(mtrx)

# outer product
vec1 <- c(1, 2, 3)
vec2 <- c(2, 4, 6, 8)
outer(vec1, vec2)









