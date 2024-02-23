install.packages("tidyverse")
library(tidyverse)

diamonds
?diamonds

ggplot() + 
  geom_histogram(aes(x = carat), data = diamonds, bins = 30, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Diamond Carat",
       x = "Carat",
       y = "Frequency")


library(ggplot2)

#1 =====================================================================

# Base plot
p <- ggplot(data = diamonds)

# Add the histogram layer using geom_bar
p <- p + layer(
  data = diamonds,
  stat = "bin",
  geom = "bar",
  position = "identity",  # Specify position argument
  mapping = aes(x = carat)
)

print(p)

#2 =====================================================================

# Base plot
p <- ggplot(data = diamonds)

# Add the histogram layer using geom_bar
p <- p + layer(
  data = diamonds,
  stat = "bin",
  geom = "line",
  position = "stack",  # Specify position argument
  mapping = aes(x = carat)
)

print(p)

#3 =====================================================================

# Base plot
p <- ggplot(data = diamonds)

# Add the histogram layer using geom_bar
p <- p + layer(
  data = diamonds,
  stat = "bin",
  geom = "bar",
  position = "stack",  # Specify position argument
  mapping = aes(x = carat, fill = color)  # Add aesthetic mapping
)

print(p)


#4 =====================================================================


# Base plot
p <- ggplot(data = diamonds)

# Add the histogram layer using geom_bar
p <- p + layer(
  data = diamonds,
  stat = "bin",
  geom = "bar",
  position = "dodge",  # Change position adjustment to "dodge"
  mapping = aes(x = carat, fill = color)  # Add aesthetic mapping
)

print(p)


