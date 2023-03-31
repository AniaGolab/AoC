library(dplyr)
a <- read.delim("2020_01_input.txt")
b <- as.data.frame(replicate(dim(a)[[1]], a))

c <- as.data.frame(b + t(b))

c %>% filter_all(any_vars(. ==2020))

a[53,1]
a[60,1]

a[55,1]*
a[78,1]*
a[88,1]



for (i in 1:dim(a)[[1]]){
  d<- c + a[[1]][i]
  if (dim(d %>% filter_all(any_vars(. ==2020)))[[1]]!=0){
    print (d %>% filter_all(any_vars(. ==2020)))
    print(i)
  }
} 

