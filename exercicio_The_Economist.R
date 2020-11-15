library(ggplot2)
library(data.table)
library(ggthemes)


pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")



df <- fread('Economist_Assignment_Data.csv', drop = 1)

pl <- ggplot(df, aes(x = CPI, y = HDI, color = Region)) + geom_point(shape = 1, size = 5)

pl2 <- pl + geom_smooth(aes(group = 1), method = 'lm', formula = y ~ log(x), se = FALSE, color = 'red')

pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)
pl4 <- pl3 + theme_bw() 

pl5 <- pl4 + scale_x_continuous(name = 'Índice de percepção de corrupção, 2011 (10 = Menos corrupto)',
                                limits = c(.9, 10.5),breaks=1:10) 

pl6 <- pl5 + scale_y_continuous(name = 'Índice de desenvolvimento humano, 2011 (1 = Melhor) ')

pl7 <- pl6 + ggtitle('Corrupção e Desenvolvimento Humano') + theme_economist_white()

print(pl7)
