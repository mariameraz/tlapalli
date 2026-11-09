# Discrete fill scale

Discrete fill scale

## Usage

``` r
scale_fill_tlapalli_d(name, direction = 1, ...)
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

ggplot(mpg, aes(x = class, fill = class)) +
  geom_bar() +
  scale_fill_tlapalli_d("Quetzal")

```
