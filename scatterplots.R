library(ggplot2)
df <- mtcars

#Dados e estetica
pl <- ggplot(df, aes(x = wt, y = mpg))

#geometria
#print(pl + geom_point(alpha = 0.5, aes(shape = factor(cyl), color = factor(cyl)), size = 6))
pl2 <- pl + geom_point(aes(color=hp), size=5)

pl3 <- pl2 + scale_color_gradient(low = 'blue', high = 'red')
print(pl3)