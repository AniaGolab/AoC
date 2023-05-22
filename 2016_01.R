a <- read.delim2("2016_01_input.txt", sep = ',', header = FALSE)
a <- c(a," R2")
a <- gsub(" ", "", a)
b <- c()

for(i in 1:(length(a)-1)){
  if (substr(a[[i]],1,1)== "R" & substr(a[[i+1]],1,1)== "L"){
    b[i] <- c("N",as.numeric(substr(a[[i]],2,)))
  }}

  if (substr(a[[i]],1,1)== "L" & substr(a[[i+1]],1,1)== "R"{
    total <- total + as.numeric(substr(a[[i]],2,2))
  }
  else{
    total <- total + as.numeric(substr(a[[i]],2,2)) + as.numeric(substr(a[[i+1]],2,2))
  }
}
