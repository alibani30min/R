

# Function
f = function(){
   print("Hello World")
}

f()

f1 = function(n){
  for (i in 1:n) {
    print("Hello World")
  }
}

f1()
f1(3)

f2 = function(n=1){
  h = "Hello World"
  for (i in 1:n) {
    print(h)
  }
  chars = nchar(h)*n
  chars
}

f2()
f2(3)

# Function in Function
k_to_c = function(t_k){
  t_c = t_k -273.15
  t_c
}

k_to_c(273)

F_to_k = function(t_F){
  t_k = ((t_F-32)*5/9) + 273.15
  t_k
}

F_to_k(0)

F_to_c = function(t_F){
  t_k = F_to_k(t_F)
  t_c = k_to_c(t_k)
  t_c
}
F_to_c(32)


# Inputs to Function
mySum = function(input1,input2){
  # Sum
  output = input1 + input2
  paste("The sum is ", output)
}
mySum(2,3)

mySum(input2 = 10, input1 = 20)

rnorm(5)

rnorm(n = 5, sd = 1.5, mean = 5)


v = rnorm(100 , mean = 5, sd = 1.5)
v

NormalizedData = function(d){
  normd = (d-mean(d))/sd(d)
  normd
}

NormalizedData(v)
