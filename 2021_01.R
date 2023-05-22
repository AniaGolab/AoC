library(tictoc)

a <- read.delim2("2021_01_input.txt", sep = '', header = FALSE)[[1]]
a <- as.numeric(a)
sum(a[2:length(a)]-a[1:length(a)-1] > 0)


b <- a[3:length(a)] + a[2:(length(a)-1)] + a[1:(length(a)-2)]
sum(b[2:length(b)]-b[1:(length(b)-1)] > 0)


