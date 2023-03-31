library(stringr)

a <- read.table("text.txt")[[1]]
b <- a %>% strsplit(split="")
b <- b[[1]] 
a %>% strsplit(split="") %>% table


sum = 0
for (i in 1:1772){
  if (b[i] == "(" ){
    sum <- sum +1
  }
  else {sum <- sum -1}
  i=i+1
}
  
sum = 0
i = 1
while (sum !=-1){
  if (b[i] == "(" ){
    sum <- sum +1
  }
  else {sum <- sum -1}
  i=i+1
}
