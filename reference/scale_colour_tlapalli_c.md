# Continuous colour scale

Continuous colour scale

## Usage

``` r
scale_colour_tlapalli_c(name, direction = 1, ...)
```

## Arguments

- name:

  Name of the palette.

- direction:

  Direction of the palette. `1` (default) uses the original order; `-1`
  reverses it.

- ...:

  Other arguments passed to
  [`ggplot2::scale_fill_gradientn()`](https://ggplot2.tidyverse.org/reference/scale_gradient.html).

## Examples

``` r
library(ggplot2)

ggplot(mtcars, aes(wt, mpg, colour = hp)) +
  geom_point(size = 3) +
  scale_colour_tlapalli_c("Ambar")

```
