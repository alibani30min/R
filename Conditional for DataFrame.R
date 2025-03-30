



# create data frame
x1 = seq(1,20,by = 2)
x2 = sample(50:100, 10, replace = F)
x3 = LETTERS[1:10]
df = data.frame(x1,x2,x3)

df$x4 = ifelse(df$x2 > 70,1,0)
df

x4 = ifelse(df$x2 > 70,1,0)
newdf = cbind(df,x4)
newdf

df$z = ifelse(df$x3 %in% c('A','C','F'),df$x1*4,df$x1*10)
df

df$t = ifelse(df$x1 < 5 | df$x1 > 15,1,0)
df