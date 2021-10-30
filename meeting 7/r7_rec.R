#пример лучшего и худшего случая быстрой сортировки

#ВНИМАНИЕ: чтобы код ниже работал, нужно чтобы ваша функция
#quicksort() была записана в среде и допускала вариацию опорного элементы

x <- sort(sample(-350000:350000,10000,replace=T)) 

start_median = Sys.time()
quicksort(x,'median')
print(Sys.time() - start_median)

start_p1 = Sys.time()
quicksort(x,'first')
print(Sys.time() - start_p1)


#рекурсивное суммирование элементов вектора

summa <- function(x){
  if(length(x)==1){
    return(x)
  }
  return(x[1] + summa(x[-1]))
}

#рекурсивное суммирование двух положительных чисел

a = 5
b = 10

aib <- function(a,b){
  if (b == 0){
    return(a)
  }
  return(aib(a+1,b-1))
}

print(aib(5,10))
