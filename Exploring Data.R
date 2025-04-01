# Exploring Data

getwd()

#"C:/Users/simin/OneDrive/Desktop/R_RStudio"
setwd("C:/Users/simin/OneDrive/Desktop/R_RStudio")
getwd()

custdata = read.table("C:/Users/simin/OneDrive/Desktop/R_RStudio/Custdata.csv", header = T, sep = ",")
head(custdata)


summary(custdata)
summary(custdata$income)


# Visualizing Data

ggplot(custdata, aes(age)) + 
  geom_histogram(aes(y= ..density..), binwidth = 5, color = 'black', fill = 'white') + 
  geom_density(alpha = 0.3, fill = "#FF6633") + 
  geom_vline(aes(xintercept = mean(age)), color = "red", size = 1.5, linetype = "dashed")


ggplot(custdata, aes(income)) + 
  geom_histogram(aes(y= ..density..), binwidth = 5000, color = 'black', fill = 'white') + 
  geom_density(alpha = 0.3, fill = "#FF6633") + 
  geom_vline(aes(xintercept = mean(age)), color = "red", size = 1.5, linetype = "dashed")


ggplot(custdata, aes(marital.stat)) +  
  geom_bar(fill = "gray") +
  theme(axis.text.x = element_text(size = rel(2)), axis.text.y = element_text(size = rel(2)), axis.title.x = element_text(size = rel(2)), axis.title.y = element_text(size = rel(2)))

ggplot(custdata, aes(marital.stat, fill = health.ins)) + 
  geom_bar(position = 'dodge')

ggplot(custdata, aes(marital.stat, fill = health.ins)) + 
  geom_bar(position = 'fill')

ggplot(custdata, aes(state.of.res)) + 
  geom_bar(fill = "gray") + 
  coord_flip() + 
  theme(axis.title.y = element_text(size = rel(0.8)))

statesum = table(custdata$state.of.res)
statesum
class(statesum)

statesum = as.data.frame((statesum))
statesum

colnames(statesum) = c("state", "count")
statesum = statesum[order(statesum$count),]
statesum

ggplot(statesum, aes(x = reorder(state, count), y = count)) + 
  geom_bar(stat = "identity") +
  coord_flip() +
  theme(axis.title.y = element_text(size = rel(0.8)))

ggplot(custdata, aes(age, income)) + 
  geom_point() + 
  geom_smooth(method = loess)


ggplot(custdata, aes(age, income)) +
  geom_point() +
  geom_smooth(method = loess) +
  xlim(0,100) + 
  ylim(0,200000)
  
 


















