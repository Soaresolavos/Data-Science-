library(ggplot2)
library(ggthemes)

# Histograma
# pl <- ggplot(mpg, aes(x = hwy))
# pl2 <- pl + geom_histogram(fill = 'red', alpha = 0.4)
# 
# print(pl2)

# Gráfico de barras
 # pl <- ggplot(mpg, aes(x = manufacturer))
 # pl2 <- pl + geom_bar(aes(fill = factor(cyl))) + theme_minimal()
 # 
 # print(pl2)

# Scatterplot
 pl <- ggplot(txhousing, aes(x = sales, y = volume))
 
 pl2 <- pl + geom_point(color = 'blue', alpha = 0.2, size = 3)
 pl3 <- pl2 + geom_smooth(color = 'red') + theme_minimal()
 print(pl3)
