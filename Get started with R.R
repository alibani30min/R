getwd()
setwd("C:/Users/simin/Desktop")
getwd()
x = 10
x
class(x)
z = as.integer(x)
class(z)
z
d1 = c(1,2,3,4)
d1
d2 = seq(1:10)
d2
d3 = 1:5
d3
d3[2]
d3[3:5]
length(d2)
d2[c(2,8)]
d4 = rep(c(1,3,5),5)
d4
d5 = seq(1,20, by=3)
d5
d6 = seq(1,30,length=6)
d6

abs(-2.5)

sqrt(10)

sin(pi/2)

cumsum(1:3)

cumprod(1:3)

factorial(5)

log10(100)

log(2.7)

# Statistical functions
v1 = c(1,3,5 ,8 ,10 ,3)
v2 = c(10, 13, 15, 18, 20, 100)
min(v1)
max(v1)
mean(v2)
var(v2)
sd(v2)
cor(v2,v1)

# Logical Functions
v1 == 5
which(v1==10)
any(v1>5)
all(v1>5)
!v1==5

any(v1>5) & any(v1<10)
any(v1>5) | any(v1<10)

# Matrix
A1 = matrix(1:6, nrow = 2, ncol = 3, byrow=TRUE)
A1
A2 = matrix(1:6, nrow = 3, ncol = 2, byrow=FALSE)
A2

dim(A1)

t(A1)

A1[A1>2]

A1[1,]

A1[,2]

A1[,-1]

A1[A=5]

A1[A1%%2==0]

rbind(A1,t(A2))

rbind(A2,t(A1))

rownames(A1)= c("r1","r2")
colnames(A1)=c("c1","c2","c3")
A1

A1[2,3] = 100
A1

A1[A1<4]=0
A1

A1 = A1+5
A1

c(A1)

A = matrix(1:9, nrow=3, ncol=3, byrow=T)
A
det(A)
# List
B = matrix(1:4,nrow=2,ncol=2, byrow = T)
B
dimnames(B)=list(c("r1","r2"),c("c1","c2"))
B

# DataFrame
products = c("p1","p2","p3")
unitprice = c(20,15,40)
monthlydemand = c(1500,2000,850)
df = data.frame(products,unitprice,monthlydemand)
df
class(mtcars)

dim(mtcars)

head(mtcars)

tail(mtcars)

mtcars[1,4]

mtcars$mpg

mtcars[,"mpg"]

mtcars[,1:3]

mtcars[,c("mpg","hp")]

mtcars[1,]

mtcars[c(1,5),]

mtcars["Mazda Rx4",]

mtcars[mtcars$mpg<20,]

