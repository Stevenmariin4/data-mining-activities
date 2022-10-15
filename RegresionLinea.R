database <- read.csv('C:/Users/steven/OneDrive/Escritorio/Universidad/Mineria de datos/data-mining-activities/Market.csv', sep=';')
datos<-database[1:50,c(6,11)]
View(datos)
plot(datos)
# Aplicacion a la linea de producto y el total de ventas 
regresion_lineal<-lm(data=database, formula=Id~Total)
names(regresion_lineal)
summary(regresion_lineal)
confint(regresion_lineal,level=0.95)
# aplicacion a la linea de producto y numero de ventas
datos<-database[1:50,c(6,9)]
View(datos)
plot(datos)
regresion_lineal<-lm(data=database, formula=Id~Quantity)
summary(regresion_lineal)
confint(regresion_lineal,level=0.95)    
