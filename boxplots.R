library(ggplot2)
df <- mtcars

pl <- ggplot(df, aes(factor(x = cyl), y = mpg))

print(pl + geom_boxplot(aes(fill = factor(cyl))) + theme_bw())