library(tidyverse)
library(tidyquant)

tq_get_options()

dutch_bros <- tq_get("BROS", get = "stock.prices")

ggplot(dutch_bros, 
       mapping = aes(x = date, y = close)) +
  geom_line(color = "purple", linewidth = 0.5) + 
  labs(x = "Date",
       y = "Price",
       title = "Dutch Bros Stock Price") +
  theme_classic() 
