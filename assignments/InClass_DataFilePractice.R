dat_catrate = data.frame(read.csv(here("data", "catrate.csv")))
dat_delomys = data.frame(read.csv(here("data", "delomys.csv")))
dat_rope = data.frame(read.csv(here("data", "rope.csv")))

head(dat_catrate)
head(dat_delomys)
head(dat_rope)

hist(dat_delomys$body_length, main = "Desiree Histogram of Body Length", 
     xlab = " Body Length", 
     col = "light blue")


