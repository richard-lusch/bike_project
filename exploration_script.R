# load packages
library(tidyverse)
library(ggthemes)
library(forecast)
# read daily data
day.df <- read_csv('~/repo/bike_project/bike_share_data_sets_and_information/day.csv')
View(day.df)
# visualize count data
gg.day.ts <- ggplot(day.df, aes(x = dteday, y = cnt)) +
  geom_line() +
  theme_fivethirtyeight() +
  scale_color_hc() +
  labs(title = 'Daily Count Time Series')
