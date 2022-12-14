database <- read.csv('C:/Users/steven/OneDrive/Escritorio/Universidad/Mineria de datos/data-mining-activities/Market.csv', sep=';', header = True)
summary(database)
database[,7:9]<-scale(database[,6:11])
distancia_euclidiana<-dist(database[,6:11])
agrupamiento<-hclust(distancia_euclidiana)


grupos<-cutree(agrupamiento,k=1)

par(mar= c(1,1,1,1))
plot(1:30)
plot(agrupamiento,hand=1,cex=0.8,labels=database[,7],
     main="analisis de cluster")
rect.hclust(agrupamiento,k=25,border="red")
