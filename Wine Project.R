
#install.packages("ggplot2")
#install.packages("ggExtra")
#install.packages("dplyr")
#remove.packages("rlang")
#install.packages("rlang")
library(rlang)
library(dplyr)
library(ggplot2)
library(ggExtra)

#read_excel("C:\Users\mraee\OneDrive\Desktop\Fall 2023\Descriptive Analytics")
Wine_Dataset
summary(Wine_Dataset)

#Alcohol Histogram

x1 <- Wine_Dataset[Wine_Dataset$Class == 1, 'Alcohol']
x2 <- Wine_Dataset[Wine_Dataset$Class == 2, 'Alcohol']
x3 <- Wine_Dataset[Wine_Dataset$Class == 3, 'Alcohol']

#lot_data <- data.frame(value = c(x1, x2, x3),Class = rep(c('class 0', 'class 1', 'class 2'), each = c(length(x1), length(x2), length(x3))))

plot_data <- bind_rows(
  data.frame(value = x1, Class = rep('class 1', length(x1))),
  data.frame(value = x2, Class = rep('class 2', length(x2))),
  data.frame(value = x3, Class = rep('class 3', length(x3)))
)


ggplot(plot_data, aes(x = Alcohol, fill = Class)) +
  geom_histogram(alpha = 0.3, bins = 25, position = "identity") +
  labs(title = 'Alcohol frequency by type of wine',
       x = 'Alcoholic ',
       y = 'Frequency') +
  scale_fill_manual(values = c('class 1' = 'green', 'class 2' = 'blue', 'class 3' = 'red')) +
  theme_minimal()

#Magnesuim Histogram

x1 <- Wine_Dataset[Wine_Dataset$Class == 1, 'Magnesuim']
x2 <- Wine_Dataset[Wine_Dataset$Class == 2, 'Magnesuim']
x3 <- Wine_Dataset[Wine_Dataset$Class == 3, 'Magnesuim']

#lot_data <- data.frame(value = c(x1, x2, x3),Class = rep(c('class 0', 'class 1', 'class 2'), each = c(length(x1), length(x2), length(x3))))

plot_data <- bind_rows(
  data.frame(value = x1, Class = rep('class 1', length(x1))),
  data.frame(value = x2, Class = rep('class 2', length(x2))),
  data.frame(value = x3, Class = rep('class 3', length(x3)))
)


ggplot(plot_data, aes(x = Magnesuim, fill = Class)) +
  geom_histogram(alpha = 0.3, bins = 25, position = "identity") +
  labs(title = 'Magnesuim frequency by type of wine',
       x = 'Magnesuim ',
       y = 'Frequency') +
  scale_fill_manual(values = c('class 1' = 'green', 'class 2' = 'blue', 'class 3' = 'red')) +
  theme_minimal()

#ColourIntensity Histogram

x1 <- Wine_Dataset[Wine_Dataset$Class == 1, 'ColourIntensity']
x2 <- Wine_Dataset[Wine_Dataset$Class == 2, 'ColourIntensity']
x3 <- Wine_Dataset[Wine_Dataset$Class == 3, 'ColourIntensity']

#lot_data <- data.frame(value = c(x1, x2, x3),Class = rep(c('class 0', 'class 1', 'class 2'), each = c(length(x1), length(x2), length(x3))))

plot_data <- bind_rows(
  data.frame(value = x1, Class = rep('class 1', length(x1))),
  data.frame(value = x2, Class = rep('class 2', length(x2))),
  data.frame(value = x3, Class = rep('class 3', length(x3)))
)


ggplot(plot_data, aes(x = ColourIntensity, fill = Class)) +
  geom_histogram(alpha = 0.3, bins = 25, position = "identity") +
  labs(title = 'ColourIntensity frequency by type of wine',
       x = 'ColourIntensity ',
       y = 'Frequency') +
  scale_fill_manual(values = c('class 1' = 'green', 'class 2' = 'blue', 'class 3' = 'red')) +
  theme_minimal()

#correlation

cor(Wine_Dataset$Alcohol, Wine_Dataset$Magnesuim)
cor(Wine_Dataset$Alcohol, Wine_Dataset$ColourIntensity)
cor(Wine_Dataset$ColourIntensity, Wine_Dataset$Magnesuim)

#Scatterplot

ggplot(data=Wine_Dataset, aes(x=Alcohol, y=Magnesuim)) + geom_point() + geom_smooth(method = lm, formula = 'y ~ x', se = FALSE)

ggplot(data=Wine_Dataset, aes(x=Alcohol, y=ColourIntensity)) + geom_point() + geom_smooth(method = lm, formula = 'y ~ x', se = FALSE)

ggplot(data=Wine_Dataset, aes(x=ColourIntensity, y=Magnesuim)) + geom_point() + geom_smooth(method = lm, formula = 'y ~ x', se = FALSE)



