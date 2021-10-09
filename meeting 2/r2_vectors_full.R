
x <- c(0,3,1,6,-1)
y <- c(1,1,20,-4,-10)

length(x)

#ќперации с векторами: действи€ поэлементные

x * 2
x - 2
x / 2
x + 2

sum(x) # - сумма всех элементов вектора
prod(y) # - произведение всех элементов вектора

c <- c(1,2,3,4)
cumprod(c) # кумул€тивное (накопленное) произведение всех элементов вектора
cumsum(c) # кумул€тивна€ сумма всех элементов вектора

x + y
x * y


zeros <- c(0,0,0,0)

zeros <- c(c,zeros) #вектора можно склеивать так
append(zeros, c) #а можно и вот так



letters <- c('A','B','C','D')
print(class(letters))


print(class(zeros))
zeros <- c(zeros,letters)
print(class(zeros))

#индексирование: 1, 2, 3, 4, 5, ..., n
x[1]
x[-1] #убираем элемент с индексом 1
y[3]

x[3:5]

letters[c(1,4)]

zeros[c(1:2,6:8)]

#как обратитьс€ к последнему элементу?

zeros[length(zeros)]

#маска: можем выводить те значени€ вектора, которые удовлетвор€ют заданному условию
d <- c(-10,5,10,0,4,-3,2,0,-14)
d[d!=0]
d[(d>0) & (d>=5)] 

# |, || - или
## && и & дл€ векторов не одно и то же!

#”слови€ и вложенные услови€
x <- -4

if (x > 0) {
  print("положительное число")
} else {
  print("отрицательное число")
}

if (x > 0) {
  print("положительное число")
} else if (x == 0){
    print('это ноль')
  } else {
    print("отрицательное число")
  }



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
for(i in 1:length(ques)){
  learnt<-c(learnt,ques[i])
  if(length(learnt) == 5){
    break
  }
}

print(learnt)

#кодим максимум из трех чисел

A<-0
B<-5
C<--10

if(A>B){
  if(A>C){
    print(A)
  }
} else {
  if(B>C){
    print(B)
  } else {
    print(C)
  }
}

maximum <- function(A,B,C) {
  if(A>B){
    if(A>C){
      return(A)
    }
  } else {
    if(B>C){
      return(B)
    } else {
      return(C)
    }
  }
}

maximum(0,-10,200)

log(100,2)
