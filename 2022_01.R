a <- read.delim2("2022_01_input.txt", sep = '\t', blank.lines.skip = FALSE, header = TRUE)[[1]]
b <- rep.int(0,sum(is.na(a)))
j <- 1

for (i in 1:length(a)){
  if (is.na(a[i])){
    j=j+1
  }
  else{
    b[j]<- b[j] + a[i]
  }
  
}
max(b, na.rm = TRUE)
sort(b)
