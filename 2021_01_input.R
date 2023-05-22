a <- as.numeric(read.delim2("2018_01_input.txt", sep = ',', header = FALSE)[[1]])

a[1:length(a)-1]+a[2:length(a)]

b <- cumsum(rep(a,138))

for (i in 1:139104){
  if (b[i] %in% b[1:(i-1)]){
    print(b[i])}
}
  


sum(table(cumsum(rep(a,100)))>1)


