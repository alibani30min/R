


# For Loop
for(i in 1:10){
  print(i)
}

for (i in 1:10) print(i)



# create data frame
x1 = seq(1,20,by = 2)
x2 = sample(50:100, 10, replace = F)
x3 = LETTERS[1:10]
df = data.frame(x1,x2,x3)
df
for (i in 1:10) print(df$x2[i])

for (i in seq_along(df$x2)) print(df[i,2])


# Loop in Loop
m = matrix(nrow = 10, ncol = 10)
m
for (i in 1:nrow(m)) {
  for (j in 1:ncol(m)) {
    m[i,j] = i*j
  }
}
m

# While
c = 0
while(c < 10){
  print(c)
  c = c+1
}


flips = 0
nheads = 0
while (nheads < 3) {
  if (sample(c('H','T'),1)=='H') nheads = nheads + 1
  flips = flips+1
}
flips

a = 1
repeat{
  print(a)
  a = a + 1
  if (a > 4) break
}

x = 1:10
for (i in x) {
  if (i==5) break
  print(i)
}