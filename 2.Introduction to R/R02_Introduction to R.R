# Assign values to the vector A & B
A <- c(1,2,3)
B <- c(1, "A", 0.5)

# Check the mode
mode(A)
mode(B)

# Select a subset of vector
A[1]
A[2:3]
A[c(2,3)]

# Assign names
names(A)
names(A) <- c("First", "Second", "Third")

# call by index or name
A[1]
A["First"]

# Example of a list
listA <- list(1, 2, "a")
print(listA)
listA[[1]]
listA[c(1,2)]
names(listA)
names(listA) <- c("First", "Second", "Third")

listA[["Third"]]
listA$Third

# Example of a matrix
A <- 1:6
dim(A)
print(A)

dim(A) <- c(2,3)
print(A)

B <- list(1,2,3,4,5,6)
print(B)
dim(B)
dim(B) <- c(2,3)
print(B)

D <- 1:12
dim(D) <- c(2,3,2)
print(D)

# Example of a factor
A <- c("Cho","Kim","Kang")
B <- as.factor(A)

print(A)
print(B)

mode(A)
mode(B)

A[1]+A[2]
B[1]+B[2]

# Example of data frame
A <- c(1,2,3)
B <- c("a","b","c")
C <- data.frame(A,B)
C
C[[1]]
C[[2]]
C[1,2]
C$B[2]

C <- data.frame(A,B, stringsAsFactors=FALSE)
C
C[[1]]
C[[2]]
C[1,2]
C$B[2]

# Data Handling: Vector
x <- c(1,2,3,4)
x <- c(x[1:3], 10, x[4])

length(x)

c(1,2,4) + c(10,11,12,13,14)

x <- matrix(1:6, nrow=3, ncol=2)
x + c(1:2)

x <- c(1,2,3)
y <- c(10,20,30)

x+y
x*y
x%%y

y <- c(10,20,30,40,50)
y[c(1,3)]
y[2:3]
v <- 2:3
y[v]

y[c(1,2,1,3)]

y[-5]
y[-length(y)]

x <- 1:5
y <- 5:1
z <- 2
1:z-1
1:(z-1)

seq(from=12,to=30,by=3)
seq(from=12,to=30,by=4)
seq(from=1.1,to=2,length=10)

rep(10,5)
rep(c(10,20,30),3)
rep(1:3,3)
rep(c(10,20,30),each=3)

x <- 1:10
x > 8
any(x > 8)
any(x > 20)
all(x > 8)
all(x > 0)

x <- c(1,2,NA,4,5)
y <- c(1,2,NULL,4,5)

mean(x)
mean(x, na.rm = TRUE)

mean(y)

x <- c(10,20,NA,40,50)
x[x>20]
subset(x, x>20)
which(x>20)

# Data Handling: Matrix & Array
A = matrix(1:15, nrow=5, ncol=3)
A

B = matrix(1:15, nrow=5, byrow = T)
B

C = matrix(nrow=2,ncol=2)
C[1,1] = 1
C[1,2] = 2
C[2,1] = 3
C[2,2] = 4
C

A = matrix(1:4, nrow=2, ncol=2)
B = matrix(seq(from=2,to=8,by=2), nrow=2, ncol=2)
A
B

A*B # 행렬 원소간 곱셈
A %*% B # 행렬간 곱셈
A*3 # 행렬*상수
A+B # 행렬간 합

C = matrix(1:15, nrow=5, ncol=3)
C
C[3,2]
C[2,]
C[,3]
C[2:4,2:3]
C[-1,]

C[1,] <- c(10, 11, 12)
C

A <- matrix(c(1:6), nrow=3, ncol=2)
A
A[A[,2]>=5,]

which(A>3)

A <- matrix(c(1:6), nrow=3, ncol=2)
apply(A,1,mean)
apply(A,2,mean)

A <- matrix(c(1:6), nrow=3, ncol=2)
B <- matrix(c(11:16), nrow=3, ncol=2)

A
B

rbind(A,B)
cbind(A,B)

cbind(A[,1],B[,2])

A <- matrix(c(1:6), nrow=3, ncol=2)
A

B <- A[1,]
B
attributes(A)
attributes(B)

C <- A[1,,drop=FALSE]
C
attributes(C)

D <- as.matrix(A[1,])
D
attributes(D)

A <- matrix(c(1:6), nrow=3, ncol=2)
colnames(A)
rownames(A)

colnames(A) <- c("1st","2nd")
colnames(A)

rownames(A) <- c("First","Second","Third")
rownames(A)

A[,"1st",drop=FALSE]

A <- matrix(c(1:15), nrow=5, ncol=3)
B <- matrix(c(11:25), nrow=5, ncol=3)
A
B

C <- array(data=c(A,B),dim=c(3,2,2))
C

# Data Handling: List
A <- list(name="Kang", salary = 10000, union = TRUE)
A
A$name

B <- list("Kang", 10000, TRUE)
B
B[[1]]

C <- vector(mode="list")
C[["name"]] <- "Kang"
C[["salary"]] <- 10000
C[["union"]] <- TRUE
C

C$name
C[["name"]]
C[[1]]

C1 <- C[[1]]
class(C1)
C1

C2 <- C[1]
class(C2)
C2

C$office <- "frontier"
C

C$salary <- NULL
C

tmplist <- list(a = list(1:5, c("a","b","c")), b = "Z", c = NA)
tmplist
unlist(tmplist)
unlist(tmplist, use.names = FALSE)

A <- list(1:3,25:29)
A
lapply(A,median)
sapply(A,median)

kids <- c("Jack", "Jill")
ages <- c(12,10)
d <- data.frame(kids, ages, stringsAsFactors=FALSE)
d

d[[1]]
class(d[[1]])

d$kids
class(d$kids)

d[,1]
class(d[,1])

d[1]
class(d[1])

Exam <-read.csv("C:RStudy\\Exam.csv", header = TRUE)
Exam

Exam[2:5,]
Exam[2:5,2]
Exam[2:5,2, drop=FALSE]

Exam[Exam$Exam1 > 3,]

dfA <- rbind(d,list("Laura",19))
kids <- c("Alice","Jill", "Laura")
state <- c("MA", "NY", "CA")
dfB <- data.frame(kids, state, stringsAsFactors=FALSE)

merge(dfA, dfB) # default: inner join
merge(dfA, dfB, all = TRUE) # outer join
merge(dfA, dfB, all.x = TRUE) # left join
merge(dfA, dfB, all.y = TRUE) # right join

firstname <- c("Alice","Jill", "Laura")
state <- c("MA", "NY", "CA")
dfC <- data.frame(firstname, state, stringsAsFactors=FALSE)
dfC

merge(dfA, dfC, by.x="kids", by.y="firstname")

# Data Handling: Factor
x <- c(5,12,13,12)
xf <- factor(x)
xf

str(xf)
unclass(xf)

length(xf)

xff <- factor(x, levels=c(5,12,13,88))
xff
xff[2] <- 88
xff

xff[2] <- 20
xff

ages <- c(25,26,55,37,21,42)
affils <- c("R","D","D","R","U","D")
tapply(ages, affils, mean)

gender <- c("M", "M", "F", "M", "F", "F")
age <- c(47,59,21,32,33,24)
income <- c(55000,88000,32450,76500,123000,45650)
tmp <- data.frame(gender, age, income)

tmp$over25 <- ifelse(tmp$age>25,1,0)
tmp
tapply(tmp$income, list(tmp$gender, tmp$over25), mean)

split(tmp$income, list(tmp$gender, tmp$over25))

table(tmp$gender, tmp$over25)

S <- "Welcome to Data Science!"
length(S)
nchar(S)

S1 <- "My name is"
S2 <- "Pilsung Kang"
paste(S1, S2)
paste(S1, S2, sep="-")
paste(S1, S2, sep="")

paste("The value of log10 is", log(10))

S1 <- c("My name is", "Your name is")
S2 <- c("Pilsung")
S3 <- c("Pilsung", "Younho", "Hakyeon")
paste(S1,S2)
paste(S1,S3)

stooges <- c("Dongmin", "Sangkyum", "Junhong")
paste(stooges, "loves", "R.")
paste(stooges, "loves", "R", collapse = ", and ")

substr("Data Science", 1, 4)
substr("Data Science", 6, 10)

stooges <- c("Dongmin", "Sangkyum", "Junhong")
substr(stooges, 1,3)

cities <- c("New York, NY", "Los Angeles, CA", "Peoria, IL")
substr(cities, nchar(cities)-1, nchar(cities))

path <- "C:/home/mike/data/trials.csv"
strsplit(path,"/")

path <- c("C:/home/mike/data/trials1.csv",
          "C:/home/mike/data/errors2.txt",
          "C:/home/mike/data/report3.doc")
strsplit(path,"/")

strsplit(path, "om")
strsplit(path, "[hm]")
strsplit(path, "i.e")
strsplit(path, "\\.")
strsplit(path, "r{2}")
strsplit(path, "[[:digit:]]")

tmpstring <- "Kim is stupid and Kang is stupid too"
sub("stupid", "smart", tmpstring)
gsub("stupid", "smart", tmpstring)

grep("mike",path)
grep("errors",path)

## 조건문과 반복문
# 조건문
r <- 1
if (r==4) {
  printf("The valus of r is 4")
} else {
  print("The valus of r is not 4")
}

carbon <- c(10, 12, 15, 19, 20)
if (mean(carbon) > median(carbon)) {
  print ("Mean > Median")
} else {
  print ("Median <= Mean")
}

# Caution!
if (mean(carbon) > median(carbon)) {
  print ("Mean > Median")
} 
else {
  print ("Median <= Mean")
}

# ifelse example
x <- 1:10
y <- ifelse(x%%2 == 0, "even", "odd")

# 반복문
n <- c(5,10,15)

for (i in n) {
  print(i^2)
}

i <- 1
while (i <= 10) {
  i <- i+4
  print(i)
}

i <- 1
repeat {
  i <- i+4
  print(i)
  if (i > 10) break
}

# User written functions
mean.and.sd1 <- function(x) {
  av <- mean(x)
  sdev <- sd(x)
  c(mean=av, SD=sdev)
}

distance <- c(148, 182, 173, 166, 109, 141, 166)
mean.and.sd1(distance)

mean.and.sd2 <- function(x) {
  av <- mean(x)
  sdev <- sd(x)
  c(mean=av, SD=sdev)
  return(av)
}

distance <- c(148, 182, 173, 166, 109, 141, 166)
mean.and.sd2(distance)

mean.and.sd3 <- function(x = rnorm(10)) {
  av <- mean(x)
  sdev <- sd(x)
  c(mean=av, SD=sdev)
}

mean.and.sd3()
mean.and.sd3(distance)

# Function arguments
addTheLog <- function(first, second) {first + log(second)}
# Exact names
addTheLog(second=exp(4),first=1)
# Partially matching names
addTheLog(s=exp(4),first=1)
# Argument order
addTheLog(1,exp(4))

# Return the result with return()
oddcount <- function(x) {
  k <- 0
  print(sprintf("odd number calculator"))
  for (n in 1:x) {
    if (n %% 2 == 1) {
      cat(sprintf("%d is an odd number. \n", n))
      k <- k+1
    }
  }
  return(k)
}

oddcount(10)

# Return the result without return() but explicitly designate the object
oddcount <- function(x) {
  k <- 0
  print(sprintf("odd number calculator"))
  for (n in 1:x) {
    if (n %% 2 == 1) {
      cat(sprintf("%d is an odd number. \n", n))
      k <- k+1
    }
  }
  k
}

oddcount(10)

# Return the result without either return() or explicit designation
oddcount <- function(x) {
  k <- 0
  print(sprintf("odd number calculator"))
  for (n in 1:x) {
    if (n %% 2 == 1) {
      cat(sprintf("%d is an odd number. \n", n))
      k <- k+1
    }
  }
}

oddcount(10)

# Function as an object
abline
args(abline)

sort

f1 <- function(a,b) return(a+b)
f2 <- function(a,b) return(a-b)

g <- function(h, x, y) h(x,y)
g(f1,5,2)
g(f2,5,2)

# Anonymous functions
apply.to.three <- function(f) {f(3)}
apply.to.three(function(x) {x*7})

a <- c(1,2,3,4,5)
sapply(a,function(x) {x+1})

# Local variable in a function
w <- 12
f <- function (y) {
  d <- 8
  w <- w+1
  y <- y-2
  print(w)
  h <- function() return(d*(w+y))
  return(h())
}

t <- 4
f(t)

w
t

# Function example 1
findrepeats <- function(x, k) {
  n <- length(x)
  repeats <- NULL
  for (i in 1:(n-k+1)) {
    if(all(x[i:(i+k-1)] == 1)) repeats <- c(repeats, i)
  }
  return(repeats)
}

vec <- c(0,1,1,0,0,1,1,1,0,1,1)
findrepeats(vec,2)
findrepeats(vec,3)
findrepeats(vec,4)

# Example 2: Kendall's tau
findud <- function(v) {
  vud <- v[-1] - v[-length(v)]
  return(ifelse(vud >0, 1, -1))
}

udcorr <- function(x,y) {
  ud <- lapply(list(x,y), findud)
  return(mean(ud[[1]] == ud[[2]]))
}

temp <- c(10, 15, 13, 17, 20)
pressure <- c(900, 920, 890, 940, 920)

udcorr(temp,pressure)