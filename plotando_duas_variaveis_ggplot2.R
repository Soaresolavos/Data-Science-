library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies, aes(x = year, y = rating))
pl2 <- pl + geom_hex() + scale_fill_gradient(high = 'red',low = 'blue') + theme_light()

print(pl2)
