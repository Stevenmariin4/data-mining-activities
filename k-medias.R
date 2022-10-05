database <- read.csv('~/Desktop/Universidad/Mineria de datos/data-mining-activities/Market.csv', sep=',', header = TRUE)
grupok<-kmeans(database[,9:10],center=4)
grupok
table(grupok$cluster,datos_food[,3])
plot(grupok$cluster)
