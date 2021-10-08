
x <- c(0,3,1,6,-1)
y <- c(1,1,20,-4,-10)

length(x)

#Операции с векторами: действия поэлементные

x * 2
x - 2
x / 2

sum(x) # - сумма всех элементов вектора
prod(y) # - произведение всех элементов вектора

c <- c(1,2,3,4)
cumprod(c) # кумулятивное (накопленное) произведение всех элементов вектора

x + y
x * y

zeros <- c(0,0,0,0)
zeros <- c(zeros,c) #вектора можно склеивать

letters <- c('A','B','C','D')
print(class(letters))

print(class(zeros))
zeros <- c(zeros,letters)
print(class(zeros))

#индексирование: 1, 2, 3, 4, 5, ..., n

x[-1] #убираем элемент с индексом 1
y[3]
x[3:5]
letters[c(1,4)]
zeros[c(1:2,7:8)]

#как обратиться к последнему элементу?


#маска

d[d == 0]


#Условия и вложенные условия
x <- -4

if (x > 0) {
  print("положительное число")
} else {
  print("отрицательное число")
}

if (x > 0) {
  print("положительное число")
} else {
  
  if (x==0) {
    
    print('это ноль')
    
  } else {
    print("отрицательное число")
  }
}

#закодим максимум из двух чисел

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
fruits <- c('apple','orange','banana','dragonfruit')

for (i in 1:length(fruits)){
  print(fruits[i])
}

x <- 10
k <- 0
while (x > 0){
  x <- x - 2
  print(x)
  k <- k + 1
  print(k)
}


ques <- c(15,10,4,11,12,6,7,18,9,5) #номера билетов
learnt <- c() #выученные билеты

#закодить с условием break, когда выучил 5 билетов

install.packages('ggplot2')
library('ggplot2')

#help(func) // ?func
#tab