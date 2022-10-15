database <- read.csv('C:/Users/steven/OneDrive/Escritorio/Universidad/Mineria de datos/data-mining-activities/database.csv', sep=';')
datos<-database[1:500,c(10,11)]
serie.ts<-ts(datos)
str(serie.ts)
datos
decompose(datos)
plot(decompose(datos))
plot(serie.ts,main="Pasajeros de 1960 a 1971", xlab="años",ylab="número de pasajeros")
install.packages("forecast")
library("forecast")
modelo<- auto.arima(serie.ts)
summary(modelo)
pronostico<- forecast(modelo,12,level=95)
plot(pronostico, main="pronostico",xlab="años",ylab="número de pasajeros")