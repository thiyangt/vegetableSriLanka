
<!-- README.md is generated from README.Rmd. Please edit that file -->

# vegetablesSriLanka

## Installation

You can install the development version of vegetablesSriLanka from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("thiyangt/vegetableSriLanka")
```

## Example

``` r
library(vegetablesSriLanka)
data("vegetables.srilanka")
head(vegetables.srilanka)
#>         Date    Item      Type   Market Price
#> 1 2016-08-01 Pumpkin Wholesale   Pettah    70
#> 2 2016-08-01 Pumpkin Wholesale Dambulla    45
#> 3 2016-08-01 Pumpkin    Retail   Pettah    90
#> 4 2016-08-01 Pumpkin    Retail Dambulla    70
#> 5 2016-08-01 Brinjal Wholesale   Pettah    60
#> 6 2016-08-01 Brinjal Wholesale Dambulla    45
```
