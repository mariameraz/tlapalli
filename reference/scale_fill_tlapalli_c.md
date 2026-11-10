# Continuous fill scale

Continuous fill scale

## Usage

``` r
scale_fill_tlapalli_c(name, direction = 1, ...)
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

ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_tlapalli_c("Azulillo")

```
