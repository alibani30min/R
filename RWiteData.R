# Read and Write Data in R

scan(what = '')

my.name = readline(prompt = 'your name: ')
my.age  = readline(prompt = 'your age: ')
my.age  = as.integer(my.age)
print(paste("Hi", my.name, "Next year you will be", my.age+1,"years old"))


setwd("C:/Users/simin/OneDrive/Desktop/R_RStudio")

#data = read.table("Data.csv",sep = ",",header=T,nrows = 50)
#head(data)
#tail(data)

install.packages("readxl")

library("readxl")
data3 = read_excel("Data.xlsx")

data4 = readLines("Data.txt")


#Read from web
ad = url("https://motamem.org/")
web = readLines(ad, encoding = "UTF-8")
head(web)

#dir.create("D:/MySafeFolder")
#setwd("D:/MySafeFolder")
products = c("p1","p2","p3")
price = c(20,15,60)
demand = c(1500,2000,850)
df= data.frame(products,price,demand)
write.table(df,"C:/Users/simin/OneDrive/Desktop/R_RStudio/df.txt",sep = " ", row.names = FALSE, col.names = TRUE)


