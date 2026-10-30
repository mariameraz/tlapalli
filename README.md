
# Tlapalli

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of tlapalli like so:

``` r
# Install package from GitHub
install.packages(c("remotes"))
remotes::install_github("mariameraz/tlapalli")
```

## Example

Basic example of how to use the color palettes:

``` r
library(tlapalli)
library(ggplot2)

# Get the colors of a palette
ambar_pal <- tlapalli_pal("Ambar")

# Or use it in a plot

ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  scale_fill_tlapalli_c("Ambar")
  
barplot(1:5, col = tlapalli_pal("Ambar", n = 5))

image(volcano, col = tlapalli_pal("Jade", n = 100, type = "continuous"))  
```
