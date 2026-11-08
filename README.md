<h1 align="center"><strong>&#123; Tlapalli &#125;</strong></h1>

<p align="center"><em>In tlilli, in tlapalli</em> </p>

Disponible en: [![Spanish](https://img.shields.io/badge/Idioma-Espa%C3%B1ol-pink)](https://github.com/mariameraz/tlapalli/blob/main/README_ES.md)

<br>

<img src="Logo/Rtlapalli.png" align="left" width="200" hspace="30" alt="Tlapalli logo">

<p align="justify">
<br><br>
R color palettes inspired by elements of Mexican and Mesoamerican culture. This is a small personal project, so for now it is only available to install from GitHub. The package currently has 27 palettes, available as both discrete and continuous scales, and I hope be adding more over time. Suggestions are welcome and appreciated (҂◡_◡) ᕤ !
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
  <img src="ImageExamples/continuous.png" width="55%">
</p>

## ☆ Discrete

<p align="center">
  <img src="ImageExamples/categorical.png" width="55%">
</p>

## Example

Basic example of how to use our color palettes:

```r
library(tlapalli)
library(ggplot2)

# Get the colors of a palette
tlapalli_pal("Ambar")

# Interpolate colors to get a palette with 10 colors
tlapalli_pal("Ambar", n = 10, type = "continuous")
```


```r
# Continuous scale in ggplot2
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
   geom_tile() +
   scale_fill_tlapalli_c("Atlas2") +
   theme_minimal()
```

<p align="center">
  <img src="ImageExamples/example1.png" width="400" alt="Ejemplo de paleta de tlapalli">
</p>


```r
# Discrete scale in ggplot2
ggplot(mpg, aes(class, fill = class)) +
  geom_bar() +
  scale_fill_tlapalli_d("Quetzal") +
  theme_bw()
```
<p align="center">
  <img src="ImageExamples/example2.png" width="400" alt="Ejemplo de paleta de tlapalli">
</p>

```r
# Discrete palette in base R
barplot(1:6, col = tlapalli_pal("PacificoSuave"))
```
<p align="center">
  <img src="ImageExamples/example3.png" width="400" alt="Ejemplo de paleta de tlapalli">
</p>

```r
# Continuous palette in base R
image(volcano, col = tlapalli_pal("Ambar", n = 100, type = "continuous"))
```
<p align="center">
  <img src="ImageExamples/example4.png" width="400" alt="Ejemplo de paleta de tlapalli">
</p>

```r
# Show color palettes
tlapalli_show("Venado8", background = "black")
```
<p align="center">
  <img src="ImageExamples/example5.png" width="400" alt="Ejemplo de paleta de tlapalli">
</p>

```r
tlapalli_show("Altata", n = 100, type = "continuous", background = "both")
```

<p align="center">
  <img src="ImageExamples/example6.png" width="400" alt="Ejemplo de paleta de tlapalli">
</p>
