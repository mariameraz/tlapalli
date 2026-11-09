# Show a palette

Plots a palette on a white or/and black background. Optionally, shows
simulations of how it looks under deuteranopia, protanopia, tritanopia
and in grayscale. Palettes with more than 15 colors are drawn as a
continuous bar.

## Usage

``` r
tlapalli_show(
  name,
  n = NULL,
  type = c("discrete", "continuous"),
  direction = 1,
  background = c("white", "black", "both"),
  simulations = TRUE
)
```

## Arguments

- name:

  Name of the palette (see `names(tlapalli)`).

- n:

  Number of colors to return. If `NULL` (default), returns all original
  colors in the palette.

- type:

  `"discrete"` takes the first `n` colors; `"continuous"` interpolates
  between them to create `n` colors.

- direction:

  Direction of the palette. `1` (default) uses the original order; `-1`
  reverses it.

- background:

  `"white"` (default) or `"black"` draws a single panel; `"both"` draws
  a white and a black panel.

- simulations:

  Logical. If `TRUE` (default), shows color vision deficiency
  simulations and a grayscale version below the original colors.

## Value

The palette colors as a character vector, invisibly.

## Examples

``` r
tlapalli_show("Ambar")

tlapalli_show("Ambar", background = "black", simulations = FALSE)

tlapalli_show("Ambar", background = "both")

tlapalli_show("Ambar", n = 100, type = "continuous")

```
