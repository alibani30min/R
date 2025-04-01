# Preparation Data


# Dealing with missing values
sum(is.na(custdata$income))
custdata$income[is.na(custdata$income)] = mean(custdata$income,na.rm = T)

sum(is.na(custdata$is.employed))
dim(custdata)

custdata_new = custdata[-which(is.na(custdata$is.employed)),]
dim(custdata_new)
sum(is.na(custdata_new$is.employed))

# Removing noisy data

summary(custdata$age)
boxplot(custdata$age)
sum(custdata$age > 100)
custdata_new2 = custdata[-which(custdata$age > 100),]
sum(custdata_new2$age > 100)
summary(custdata_new2$age)
boxplot(custdata_new2$age)
dim(custdata_new2)


# change variable type

head(custdata)
sum(is.na(custdata$health.ins))

health.in.b = ifelse(custdata$health.ins=="TRUE",1,0)
custdata_new3 = cbind(custdata,health.in.b)
head(custdata_new3)

summary(custdata$income)
q = quantile(custdata$income, c(0.25, 0.5, 0.75))
q
custdata$income_cat[custdata$income > q[3]] = "Very High"
custdata$income_cat[custdata$income < q[3] & custdata$income > q[2]] = "High"
custdata$income_cat[custdata$income < q[2] & custdata$income > q[1]] = "Middle"
custdata$income_cat[custdata$income < q[1]] = "Low"

head(custdata)


# Sampling from data

custdata_new4 = custdata[sample(1:nrow(custdata),round(0.7*nrow(custdata))),]
dim(custdata_new4)

# Divide data into training and test
i = sample(1: nrow(custdata),round(0.8*nrow(custdata)))
train = custdata[i,]
test = custdata[-i,]

dim(train)
dim(test)












