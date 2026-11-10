
<h1 align="center">

<strong>{ Tlapalli }</strong>
</h1>

<h4 align="center">

<em>In tlilli, in tlapalli</em>
</h4>

Disponible en:
[![Spanish](https://img.shields.io/badge/Idioma-Espa%C3%B1ol-pink)](https://github.com/mariameraz/tlapalli/blob/main/README_ES.md)

<br>

<img src="man/figures/Rtlapalli.png" align="left" width="200" hspace="30" alt="Tlapalli logo">

<p align="justify">

<br> R color palettes inspired by elements of Mexican and Mesoamerican
culture. All palettes were designed with different ways of perceiving
color in mind. This is a small personal project, so for now it is only
available to install from GitHub. The package currently has 27 palettes,
available as both discrete and continuous scales, and I hope be adding
more over time. Suggestions are welcome and appreciated (҂◡\_◡) ᕤ !
</p>

<br clear="left">

## Installation

``` r
install.packages(c("remotes"))
remotes::install_github("mariameraz/tlapalli")
```

# Palettes

## ☆ Continuous

<p align="center">

<img src="man/figures/continuous.png" width="500" alt="Continuous tlapalli palettes">
</p>

## ☆ Discrete

<p align="center">

<img src="man/figures/categorical.png" width="500" alt="Discrete tlapalli palettes">
</p>

## Example

Basic examples of how to use our color palettes:

``` r
library(tlapalli)
library(ggplot2)

# List available palettes
names(tlapalli)
#>  [1] "DiaDeMuertos"   "LosTemerarios"  "Altata"         "Culiacan"      
#>  [5] "Atlas"          "Momoto"         "Tecate"         "LosTemerarios2"
#>  [9] "Alicante"       "Jade"           "Obsidiana"      "Ambar"         
#> [13] "Cempasuchil"    "Azulillo"       "CartaBlanca"    "PacificoClara" 
#> [17] "PacificoLight"  "PacificoSuave"  "Conchas"        "Venado8"       
#> [21] "Coqueta"        "Quetzal"        "Ofrenda"        "Cosecha"       
#> [25] "Valle"

# Get the colors of a palette
tlapalli_pal("Ambar")
#> [1] "#211b08" "#6b3b06" "#a16d07" "#c5b82d" "#c8e8da"

# Interpolate colors to get a palette with 10 colors
tlapalli_pal("Ambar", n = 10, type = "continuous")
#>  [1] "#201A07" "#402909" "#623707" "#7C4B06" "#946107" "#A97D10" "#B99E20"
#>  [8] "#C7BD45" "#CCD291" "#C7E7D9"
```

``` r
# Show color palettes
tlapalli_show("Venado8", background = "black")
```

<p align="center">

<img src="man/figures/README-example5-1.png" width="400" alt="">
</p>

``` r
tlapalli_show("Altata", n = 100, type = "continuous", background = "both")
```

<p align="center">

<img src="man/figures/README-example6-1.png" width="400" alt="">
</p>

``` r
# Continuous scale in ggplot2
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
   geom_tile() +
   scale_fill_tlapalli_c("Azulillo") +
   theme_minimal()
```

<p align="center">

<img src="man/figures/README-example1-1.png" width="400" alt="">
</p>

``` r
# Discrete scale in ggplot2
ggplot(mpg, aes(class, fill = class)) +
  geom_bar() +
  scale_fill_tlapalli_d("Quetzal") +
  theme_bw()
```

<p align="center">

<img src="man/figures/README-example2-1.png" width="400" alt="">
</p>

``` r
# Discrete palette in base R
barplot(1:6, col = tlapalli_pal("PacificoSuave"))
```

<p align="center">

<img src="man/figures/README-example3-1.png" width="400" alt="">
</p>

``` r
# Continuous palette in base R
image(volcano, col = tlapalli_pal("Ambar", n = 100, type = "continuous"))
```

<p align="center">

<img src="man/figures/README-example4-1.png" width="400" alt="">
</p>
