# Get colors from a palette

Get colors from a palette

## Usage

``` r
tlapalli_pal(name, n = NULL, type = c("discrete", "continuous"), direction = 1)
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

## Value

A character vector of hex colors.

## Examples

``` r
tlapalli_pal("Ambar")
#> [1] "#06291f" "#7d3a26" "#c95d39" "#ccad46" "#dce9dd"
tlapalli_pal("Ambar", n = 20, type = "continuous")
#>  [1] "#06281F" "#262E20" "#3E3222" "#553623" "#6B3824" "#803B26" "#90422A"
#>  [8] "#A04A2E" "#B05132" "#C05936" "#C9663A" "#CB773D" "#CC883F" "#CC9942"
#> [15] "#CCA945" "#D0B65F" "#D6C27E" "#D9CF9D" "#DBDBBD" "#DCE9DD"
tlapalli_pal("Ambar", direction = -1)
#> [1] "#dce9dd" "#ccad46" "#c95d39" "#7d3a26" "#06291f"
```
