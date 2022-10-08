database <- read.csv('~/Desktop/Universidad/Mineria de datos/data-mining-activities/Market.csv', sep=',', header = TRUE)
data(database)
clasificador<-naiveBayes(Species~.,data=database)
clasificador
prediccion<-table(predict(clasificador,iris),iris[,5])
prediccion
clasificador$apriori
plot(prediccion,col=hcl(c(120,10,44)))