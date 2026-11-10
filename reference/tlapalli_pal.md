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
#> [1] "#211b08" "#6b3b06" "#a16d07" "#c5b82d" "#c8e8da"
tlapalli_pal("Ambar", n = 20, type = "continuous")
#>  [1] "#201A07" "#2F2109" "#3E2809" "#4E2F09" "#5E3507" "#6D3D06" "#784706"
#>  [8] "#845206" "#8F5C07" "#9B6707" "#A5740B" "#AC8413" "#B4941B" "#BCA323"
#> [15] "#C3B32B" "#C8BF4D" "#CBC972" "#CCD395" "#CBDDB7" "#C7E7D9"
tlapalli_pal("Ambar", direction = -1)
#> [1] "#c8e8da" "#c5b82d" "#a16d07" "#6b3b06" "#211b08"
```
