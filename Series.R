database <- read.csv('~/Desktop/Universidad/Mineria de datos/data-mining-activities/Market.csv', sep=',', header = TRUE)

serie.ts<-ts(database[,11:6])
str(serie.ts)
decompose(database[,11:15])
plot(decompose(database[,11,6]))
plot(serie.ts,main="Pasajeros de 1960 a 1971", xlab="años",ylab="número de pasajeros")


modelo<- auto.arima(serie.ts)
summary(modelo)
pronostico<- forecast(modelo,12,level=95)
plot(pronostico, main="pronostico",xlab="años",ylab="número de pasajeros")