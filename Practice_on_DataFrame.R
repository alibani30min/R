#mtcars
# Q1: Consider mtcars dataset:
   #a: what percentage of cars in data set are automatic (am = 1)?
   #b: what percentage of vehicles with 4 cylinder engines
   #   are heavier than 2500 lb?
   #c: Mean and Sd of mpg for vehicles with 4 gears?

# Q1 : a
am_cars = sum(mtcars$am)/length(mtcars$am)*100
am_cars

# Q1 : b
cars4_cldr2500lb = sum(mtcars$cyl==4 & mtcars$wt > 2.5)/sum(mtcars$cyl==4)*100
cars4_cldr2500lb

# Q1 : c
mean(mtcars$mpg[mtcars$gear==4])
sd(mtcars$mpg[mtcars$gear==4])
 