# Advanced Graphics: ggplot2
install.packages("ggplot2")
library("ggplot2")
qplot(mpg,wt,data = mtcars, col = cyl)
qplot(mpg,wt,data = mtcars, size = cyl)

# First Example
x = rnorm(200, mean = 0.8)
cond = sample(c("A","B"), replace = T, 200)
d = data.frame(cond,x)
head(d)

ggplot(d, aes(x)) + geom_histogram()

ggplot(d, aes(x)) +
    geom_histogram(binwidth = 0.5, color = "black", fill = "white")

ggplot(d, aes(x)) + geom_density()



ggplot(d, aes(x)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.25, color = "black", fill = "white") +
  geom_density(alpha = 0.2, fill = "#FF6633")

ggplot(d, aes(x)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.25, color = "black", fill = "white") +
  geom_vline(aes(xintercept = mean(x)), color = "red", size = 1.5, linetype = "dashed") + 
  geom_density(alpha = 0.2, fill = "#FF6633")


ggplot(d, aes(x, color = cond)) + 
  geom_density()

ggplot(d, aes(x, fill = cond)) + 
  geom_density(alpha = 0.5)


# Second Example
x = 1:30 + rnorm(30, sd = 1.5)
y = 1:30 + rnorm(30, sd = 2)

cond = rep(c('A','B'), each = 15)
cond
r = data.frame(x,y,cond)
head(r)
tail(r)

ggplot(r, aes(x,y)) + 
  geom_point(shape = 2, size = 2)

ggplot(r, aes(x,y, color = cond)) + 
  geom_point(shape = 1, size = 2)

ggplot(r, aes(x,y, color = cond)) + 
  geom_point(shape = 1, size = 2) + 
  geom_smooth(method = lm, se = F)

ggplot(r, aes(x,y, color = cond)) + 
  geom_point(shape = 1, size = 2) + 
  geom_smooth(method = loess)

ggplot(r, aes(x,y)) + 
  geom_point(shape = 2, size = 2) + 
  geom_smooth(method = loess)

ggplot(r, aes(x,y)) + 
  geom_point(shape = 2, size = 2) + 
  geom_smooth(method = lm, se = F)

ggplot(r, aes(x,y, col = cond)) + 
  geom_point(shape = 3, size = 3) + 
  geom_smooth(method = lm, se = F)

ggplot(r, aes(x,y, shape = cond)) + geom_point()


# Box plot
ggplot(d, aes(cond, x)) + geom_boxplot()

ggplot(r, aes(cond,x, fill = cond)) + geom_boxplot()

ggplot(r, aes(cond,x, fill = cond)) +
  geom_boxplot() + 
  guides(fill = FALSE) + 
  ggtitle("Box Plot")

# Third Example
sex = c("female", "female", "Male", "Male")
time = c("Lunch","Dinner","Lunch", "Dinner")
total_bill = c(13.53,16.83,16.24,17.42)

d = data.frame(sex, time, total_bill)
d

ggplot(d, aes(x = time, y= total_bill, group = sex)) +
  geom_line() +
  geom_point()
 
ggplot(d, aes(x = time, y= total_bill, group = sex, color = sex)) +
  geom_line() +
  geom_point()

ggplot(d, aes(x = time, y= total_bill, group = sex, shape = sex)) +
  geom_line() +
  geom_point()


ggplot(d, aes(x = time, y= total_bill, group = sex, shape = sex)) +
  geom_line(size = 1.5) +
  geom_point(size = 4, fill = "red") + 
  scale_shape_manual(values = c(23,21))









