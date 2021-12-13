#In-Class Data Exploration 1
#Desriee Smith

require("here")
dat_bird= data.frame(read.csv(here("data", "bird.sta.csv")))
dat_hab = data.frame(read.csv(here("data", "hab.sta.csv")))

pairs(iris)
pairs(iris[, c("Petal.Width", "Sepal.Width", "Sepal.Length")])

hist(dat_bird$CBCH, main = "Histogram of Chestnut-bk Chickadee" , breaks = 0:7 - 0.5, col = "lightsalmon", alpha.f = 0.3,
border = "lightgreen")
