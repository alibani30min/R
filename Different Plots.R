# Creating a Graph

plot(mtcars$wt,mtcars$mpg)

abline(lm(mtcars$mpg~mtcars$wt))
title("Regression of MPG over Weight")

# Simple Regression
hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 10, col = "Red")

# Add a normal Curve
x = mtcars$mpg
hist(x, breaks = 10, freq = F, col = "Red", xlim = c(0, max(x)), xlab = "Miles per Gallon", main = "Histogram with Normal Curve")

xfit = seq(0, max(x), length = 40)
yfit = dnorm(xfit, mean = mean(x), sd = sd(x))
lines(xfit, yfit, col = "Blue", lwd = 2)


# Dot plots

dotchart(mtcars$mpg, labels = row.names(mtcars), xlab = "Miles per Gallon", main = "Gas Miles for car Modules")

x = mtcars[order(mtcars$mpg),]
x$color[x$cyl == 4] = "Red"
x$color[x$cyl == 6] = "Blue"
x$color[x$cyl == 8] = "Green"
dotchart(x$mpg, labels = row.names(x), groups = factor(x$cyl), xlab = "Miles per Gallon", gcolor = "black", color = x$color)

# Bar plots
 counts = table(mtcars$gear)
 counts
 class(counts)
 barplot(counts, main = "Car Distribution by Gear", xlab = "# of Gears", ylim = c(0,20))
 barplot(counts, main = "Car Distribution by Gear",horiz = T, names.arg = c('3 Gears','4 Gears', '5 Gears'), xlim = c(0,20))
 
 # Stacked Bar Plots with Colors and Legend
 
 counts = table(mtcars$vs, mtcars$gear)
 counts
 barplot(counts, main = "Car Distribution by Gear and vs",xlab = "# of Gears", ylim = c(0,20), col = c('dark blue', 'red'), legend = rownames(counts))
 
 counts = table(mtcars$gear,mtcars$vs)
 counts
 barplot(counts, main = "Car Distribution by Gear and vs",xlab = "Type of Engine", ylim = c(0,20), col = c('dark blue', 'red','green'), legend = rownames(counts))
 
 
 counts = table(mtcars$vs, mtcars$gear)
 counts
 barplot(counts, main = "Car Distribution by Gear and vs",xlab = "# of Gears", ylim = c(0,15), col = c('dark blue', 'red'), legend = rownames(counts),beside = T)
 
 # Time Series
 LakeHuron
 class(LakeHuron)
 plot(LakeHuron, col = 'red', main = 'Time Series')
 
 # Pie Chart
 numbers = c(50,70,20,30,80)
 Category = c('A','B','C','D','E')
 pie(numbers,labels = Category, main = 'Pie Chart')
 
 pct = round(numbers/sum(numbers)*100)
 pct
 
 l = paste(Category, ':', pct,'%')
 pie(pct, labels = l, main = "Pie Chart", col = rainbow(length(l)))
 
 
 # Box plot
 
 boxplot(mpg~cyl, data= mtcars, main = "Cars Milage Data", xlab = "# of Cylinders", ylab = "Miles per Gallon")
 
 
 
 
 
 
 
 
 
 
 
