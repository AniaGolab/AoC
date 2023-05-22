library(tictoc)
tic()
a <- read.delim2("2019_01_input.txt", sep = '', header = FALSE)[[1]]
tic()
recursive <- function(x){
  floor(x/3) -2}

total <- 0

for (i in a){
  while (recursive(i) >0 ) {
    total <- total + recursive(i)
    i <- recursive(i)
  }
}
toc()
