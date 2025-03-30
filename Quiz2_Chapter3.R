# Read and Write Quiz in R

# Quiz 2:1 
setwd("C:/Users/simin/Desktop/R_RStudio")
data = read.csv("Custdata.csv",header = TRUE)

MV_income = sum(data$income=='NA') 
MV_income


# Quiz 2:2 
Mean_incom = mean(data$income)
Mean_incom

# Quiz 2:3
F_customer = sum(data$sex=='F')/length(data$sex)*100
F_customer

# Quiz 2:4
M_customer_25_35 = sum(data$sex=='M' & data$age > 25 & data$age < 35 )/sum(length(data$age))*100
M_customer_25_35

# Quiz 2:5
empd_up30 = sum(data$is.employed=='TRUE' & data$age[data$is.employed != 'NA'] > 30, na.rm = TRUE)/sum(data$is.employed=='TRUE' | data$is.employed=='FALSE',na.rm = TRUE)*100             
empd_up30

