# FUNCTIONS ----------

# Define a function
my_fun <- function(x){ x * 2 }

# works
my_fun(5)

# works not because it expects some input for x
my_fun()

# works not because x becomes "a" and "a" * 2 doesn't work
my_fun("a")

# as in loops there is a screte assignment
my_fun <- function(x){ 
  #in the background if "a" is given as input: x <- "a"
  x * 2 
  }

# for a function to return something the last statement
# must be an implicit print
# This works only with the extra num
my_fun <- function(x){ 
  num <- x * 2 
  num
  }

my_fun(5)


# *APPLY ----------

# General form:
# *apply(iterable_object, function)

# sapply simplifies the output
sapply(c(1, 2, 3), my_fun)

# lapply does not simplify the output
lapply(c(1, 2, 3), my_fun)


# *TIDYTEXT ----------

# load packages
library(tidyverse)
library(tidytext)

# read a book
text <- read_file("../Sentiment/books/alice.txt")

# tidytext likes text in tibbles (a form of data frame)
text_tbl <- tibble(book = "Alice", 
                   text = text)

# tokenize with unnest tokens 
# first argument: name of new column
# second argument: name of column containing text
text_tbl %>% 
  unnest_tokens(word, text)

# add sentiment values from afinn to tibble
# requires word to be first argument of unnest_tokens
sents <- text_tbl %>% 
  unnest_tokens(word, text) %>% 
  inner_join(get_sentiments("afinn"))

