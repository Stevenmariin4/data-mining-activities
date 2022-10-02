database <- read.csv('~/Desktop/Universidad/Mineria de datos/data-mining-activities/Market.csv', sep=',', header = TRUE)
grupok<-kmeans(database[,9:10],center=4)
table(grupok$cluster,datos_food[,13])
plot(grupok$cluster)
