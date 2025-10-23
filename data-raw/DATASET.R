## Packages
library(readr)
library(tidyr)
library(dplyr)
library(here)

## Read data
data <- read_csv(here("data-raw", "data.csv"))

## Rename columns
colnames(data) <- c("Date", "Item",
                    "Wholesale_Pettah", "Wholesale_Dambulla",
                    "Retail_Pettah", "Retail_Dambulla")

## Remove the first row
data <- data[-1, ]

## Transform data
vegetables.srilanka <- data |>
  pivot_longer(cols = -c(Date, Item),
               names_to = c("Type", "Market"),
               names_sep = "_",
               values_to = "Price")
vegetables.srilanka$Date <- as.Date(vegetables.srilanka$Date, format ="%d/%m/%Y")
vegetables.srilanka$Price <- as.numeric(vegetables.srilanka$Price)

library(tsibble)
vegetables.srilanka <- vegetables.srilanka |>
  as_tsibble(key=c(Item, Type, Market), ind=Date)
vegetables.srilanka
## Save
usethis::use_data(vegetables.srilanka, overwrite = TRUE)
