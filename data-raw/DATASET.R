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

## Remove the first row (if needed)
data <- data[-1, ]

## Transform data to long format
vegetables.srilanka <- data |>
  pivot_longer(cols = -c(Date, Item),
               names_to = c("Type", "Market"),
               names_sep = "_",
               values_to = "Price")

## Save as internal or external dataset in R package
usethis::use_data(vegetables.srilanka, overwrite = TRUE)
