setwd('C:/Users/student/Downloads/')
file<-'AFLT_160901_211203.csv'
d<-read.csv(file,sep=";", stringsAsFactors = F)
names(d)

class(d$X.DATE.)
d$X.DATE.<-as.Date(as.character(d$X.DATE.), format='%Y%m%d')

plot(d$X.DATE.,d$X.CLOSE.,type='l')
#------------мини-справка по прочтению дат

# %d - день месяца (число)
# %B - месяц вида ('May','July','August')
# %b - месяц вида ('May',Jul,'Aug')
# %m - номер месяца (05,01)
# %Y - полный год (1953,2005)
# %y - неполный год (53,05)
Sys.setlocale(locale = "us")

ex2 <- as.Date('200829','%y%m%d')
ex3 <- as.Date('202908','%y%d%m')
ex4 <- as.Date('2020;08;29','%Y;%m;%d')
ex5 <- as.Date('2020-08-29','%Y-%m-%d')
ex6 <- as.Date('May 26, 2020','%B %d, %Y')
ex7 <- as.Date('2020, Aug 19','%Y, %b %d')

d$ym<-format(d$X.DATE., "%y.%m")

#надо перейти к месячным приростам?

#способ 1:

rates_1 <- aggregate(formula = d$X.CLOSE. ~ d$ym, data = d, FUN = function(x) {x[length(x)]})
colnames(rates_1) = c('ym','X.CLOSE.')
rates_1$r<- c(NA, 100 * diff(rates_1$X.CLOSE.)/rates_1$X.CLOSE.[-nrow(rates_1)])


#способ 2:
d$r<- c(NA, d$X.CLOSE.[2:length(d$X.CLOSE.)]/d$X.CLOSE.[-nrow(d)])
S <- unique (d$ym)

rates_2<-data.frame(s = unique(d$ym))
for (i in 1:nrow(rates_2)) {
  temp<- rates_2$s[i]
  t <- d[d$ym == temp, c("ym", "r")] #срезаем таблицу
  rc<-prod(t$r)*100-100 #доходность за месяц за месяц
  rates_2$r[i]<-rc

}


rates = rates_1

rates = rates[-1, ] #удалим первую строчку с NA

#нарисовать график доходностей 
plot(rates$r, type ="l")
#отметить точками на графике максимальный и минимальный прирост в стоимости акции

#вычислить среднее и дисперсию, на уровне среднего провести линию


#вычислить дисперсию 

x<-rates$r
l<-length(x)
m_fall <- 5 #индекс месяца макс падения
max_fall <- 10 #макс длина падения
tm_fall <- 0
tl_fall <- 0

m_rise <- 0 #индекс месяц макс роста
max_rise <- 0 #макс длина роста
tm_rise <- 0
tl_rise <- 0

paste('С ', rates_1[m_fall,'ym'], 'началось падение длиной в ', max_fall, 'месяцев')

