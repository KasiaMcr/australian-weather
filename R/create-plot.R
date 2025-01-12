# Simple script analysing the Australian weather data

library("tidyverse")

# Read in the data

df = read_csv("data/weatherAUS.csv")

# Create a scatter plot of Humidity9am and Temp9am
# a location

scatter_plot =
  df %>%
  filter(Location == "Melbourne") %>%
  ggplot(aes(x = Temp9am, y = Humidity9am)) +
  geom_point(colour = "purple") +
  labs(title = "Humidity and Temperature for Brisbane") +
  theme_minimal()
  labs(caption = "Copyright by the Australian Commonwealth Bureau of Meteorology")


# Save the plot in graphics/
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)
