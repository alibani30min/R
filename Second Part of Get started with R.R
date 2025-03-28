# Factor for Categorical Data

gender = factor(c("F","M","M","F"),levels = c("F","M"))
gender
gender[3]



# wrong command : gender[1]="Not Responded"
levels(gender)=c("F","M","Not Responded")
gender[1]="Not Responded"
gender

VADeaths
class(VADeaths)

VADeaths[,c(1,3)]

VADeaths[3:5,c(1,3)]

mean(VADeaths[,1])

mean(VADeaths[,2])

mean(VADeaths[,3])

mean(VADeaths[,4]) 

colMeans(VADeaths)

VADeaths=rbind(VADeaths,col_av = colMeans(VADeaths))
VADeaths

#Quiz 1
df = data.frame('prod_name'= c('g1','g2','c1','c2'),'price'=c(45,25,75,35),'monthly_damand'=c(1200,2500,200,1850),'brand'=c('z','x','x','y'))
df
df$monthly_rev=df$price*df$monthly_damand
df
sum(df$monthly_rev[df$brand=='x'])
 
df$revenue_share = round(df$monthly_rev/sum(df$monthly_rev)*100)
df


d1 = seq(1,50,by=3)
d1
d2 = rep(1:3,4)
d2
d3 = c(d1,d2)
d3

mean(d3)

# Quiz 2
x = seq(1,5,by=0.5)
y= sin(x)
sd(y)

# Quiz 3
A = matrix(c(sqrt(1:10)),nrow = 2, ncol = 5, byrow = TRUE)
colnames(A) = c('c1','c2','c3','c4','c5')
A
sum(A[,3])

mean(A)
# Quiz 4
A[A<mean(A)]=0
B = A[A>0]
B
median(B)

mtcount = mtcars$wt[mtcars$wt>mean(mtcars$wt)]
length(mtcount)