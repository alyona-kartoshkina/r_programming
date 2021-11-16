################# матрицы и работа с ними

matrix(c(0,1,3,4,5,6,7,8,9),ncol=3,nrow=3)
matrix(c(0,1,3,4,5,6,7,8,9),ncol=3,nrow=3, byrow=T)

#а если укажем размерность неправильно?

matrix(c(0,1,3,4,5,6,7,8,9),ncol=3,nrow=2) 
matrix(c(0,1,3,4,5,6,7,8,9),ncol=3,nrow=5)

x = c(1,1,1)
y = c(0,0,0)
z = c(-1,-1,-1)
M = rbind(x,y,z)
colnames(M) = c('Единички','Нули','Минус-единички')
rownames(M) = c('X','Y','Z')
M

m1 = matrix(c(1,1,1,1,1),ncol=1)
m2 = matrix(c(seq(1:10)),ncol=2)
m1
m2
m3 = cbind(m2,m1) #склейка матриц по столбцам

m1 = matrix(c(1,1,1,1,1),ncol=5)
m2 = matrix(c(seq(1:10)),ncol=5)
m3 = rbind(m1,m2) #склейка матриц по строкам 

m3

print(dim(m1))
print(nrow(m1))
print(ncol(m2))

sqr = matrix(rnorm(9,5,2),nrow=3)
sqr

diag(sqr) #получить диагональные элементы

sqr[3,2] #обращение к элементам матрицы
sqr[1:2,1:2] #вырезали матрицу из матрицы
sqr[-1,-1] #убрали 1-ую строку и 1-ый столбец
sqr[c(1,3),c(1,2)] #взяли элементы (1,1) (1,2) (3,1) (3,2)

A = matrix(c(1,0,0,-1),nrow=2)
B = matrix(c(1,2,3,4),nrow=2)
A
B

A*B #поэлементное умножене
A%*%B #векторное умножение

t(B) #транспонирование матрицы

X = matrix(c(1,1,1,2,2,2,4,0,5),ncol=3)
qr(X)$rank #ранг матрицы

det(X) #определитель матрицы

#install.packages('fUtilities')
library('futility')

# AX = B
# X = A(-1)*B

A = matrix(c(1,-0.8,1,0.2),nrow=2)
B = matrix(c(2.38,1.38),ncol=1)

x = solve(A,B) #решение системы линейных уравнений
x

A%*%x == B #проверяем решение
