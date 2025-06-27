## packages
library(readxl)
library(tidyr)
library(dplyr)

## Read data
data <- read_excel("C:/Users/thisu/Desktop/Final project/4. Final data/combined_data_new_cleaned.xlsx")

colnames(data) <- c("Date", "Item",
                    "Wholesale_Pettah", "Wholesale_Dambulla",
                    "Retail_Pettah", "Retail_Dambulla")

data <- data[-1, ]


data <- data %>%
  pivot_longer(cols = -c(Date, Item),
               names_to = c("Type", "Market"),
               names_sep = "_",
               values_to = "Price")

## save dataset
## Save the dataset as vegetables.srilanka
usethis::use_data(vegetables.srilanka, overwrite = TRUE)
