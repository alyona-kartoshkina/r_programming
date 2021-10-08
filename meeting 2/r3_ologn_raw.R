#простой поиск

k <- 0 #число операций

n <- 10000000 #длина вектора
#set.seed(129); 

numbers <- sample(1:n,n,replace = F) #генерируем случайный вектор из элементов от 1 до 1000 с 1000 элементов без повтора

x <- sample(1:n,1) #случайное число от 1 до 1000

start <- Sys.time()
#код
end <- Sys.time()
  
print(end - start)
print(k)
print(x)
  

rm(x,numbers,k,start,end)


#бинарный поиск


x <- sample(1:n,1)
numbers <- sort(sample(1:n,n,replace = F))
k <- 0

start <- Sys.time()

#код

end <- Sys.time()
print(end-start)



