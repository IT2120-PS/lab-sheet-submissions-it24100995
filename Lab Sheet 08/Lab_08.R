setwd("C:\\Users\\03cri\\Desktop\\IT24101605")

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)


## Question 01
popmn <- mean(Weight)
popvar <- var(Weight) * (length(Weight)-1)/length(Weight)
popSD <- sqrt(popvar)

popmn
popvar
popSD


## Question 02
samples <- c()
n <- c()
for (i in 1:25){
  s <- sample(Weight, 6, replace=TRUE)
  samples <- cbind(samples, s)
  n <- c(n,paste('S',i))
}
colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.var   <- apply(samples, 2, var)
s.SD    <- sqrt(s.var)

s.means
s.SD


## Question 03
mean_smeans <- mean(s.means)
sd_smeans   <- sd(s.means)

mean_smeans
sd_smeans

