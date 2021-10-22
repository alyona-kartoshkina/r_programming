# функция для вычисления факториала числа 

fact <- function(x){
  if (x == 1){
    return(1)
  }
  return(x*fact(x-1))
}


# функция для совершения обратного отсчёта
countdown <- function(x){
  print(x)
  if(x == 1){
    return(0)
  }
  return(countdown(x-1))
}


# функция для определения n-ого элемента в последовательности фибонначи

fib <- function(n){
  if ((n == 1) | (n == 2)) {
    return(1)
  }
  return(fib(n-1)+fib(n-2))
}




