database <- read.csv('~/Desktop/Universidad/Mineria de datos/data-mining-activities/Market.csv', sep=',', header = TRUE)
grupok<-kmeans(database[,7:9],center=4)
grupok
table(grupok$cluster,database[,6])
plot(grupok$cluster)
