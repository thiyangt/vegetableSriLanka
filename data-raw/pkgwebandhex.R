install.packages("pkgdown")
library(pkgdown)
usethis::use_pkgdown()
# Run once to configure your package to use and deploy pkgdown
#usethis::use_pkgdown_github_pages()
# Preview your site locally before publishing
pkgdown::build_site()
