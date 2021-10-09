#простой поиск

k <- 0 #число операций

n <- 10000000 #длина вектора
#set.seed(129); 

numbers <- sample(1:n,n,replace = F) #генерируем случайный вектор из элементов от 1 до 1000 с 1000 элементов без повтора

x <- sample(1:n,1) #случайное число от 1 до 1000

start <- Sys.time()
for (i in 1:length(numbers)) {
  k <- k + 1
  if (x == numbers[i]) {
    break
  }
}
end <- Sys.time()
  
print(end - start)
print(k)
print(x)
  

rm(x,numbers,k,start,end)
#бинарный поиск

num <- sample(1:n,1)
y <- sort(sample(1:n,n,replace = F))
k <- 0

start <- Sys.time()
while(TRUE){
  k <- k + 1
  mid <- ceiling(length(y)/2) #округляем в большую сторону
  a = y[mid]
  if(a == num){
    cat('\n\n')
    cat("Операций потребовалось: ", k, '\n')
    cat("Загадали число: ", num)
    break
  } else {
    if (a > num){
      y = y[1:mid]
    } else {
      y = y[mid:length(y)]
    }
  }
}
end <- Sys.time()
print(end-start)



