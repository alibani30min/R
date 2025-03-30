# if , if else , else


x = 0
if (x > 0){
  print("Positive Number")
}

if (x > 0){
  print(" Positive Number")
} else {
  print(" Negative Number")
}

if(x > 0){
  print(" Positive Number")
} else if (x < 0){
  print(" Negative Number")
} else {
  print("Zero")
}

if(x > 0){
  print(" Positive Number")
} else {
  if (x < 0){
  print(" Negative Number")
} else {
  print("Zero")
  } 
}

# Just for conditional in one statement we can write it in one line
if (x > 0) print("Positive") else print("Negative")