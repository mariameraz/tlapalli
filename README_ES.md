# { Tlapalli }

#### *In tlilli, in tlapalli*

Available in:
[![English](https://img.shields.io/badge/Language-English-purple)](https://github.com/mariameraz/tlapalli/blob/main/README.md)

  

![Tlapalli logo](reference/figures/Rtlapalli.png)

  
Paletas de colores para R inspiradas en elementos de la cultura mexicana
y mesoamericana. Todas fueron creadas considerando distintas formas de
percibir el color. Es un proyecto personal y pequeño, así que por ahora
solo se instala desde GitHub. Actualmente incluye 27 paletas,
disponibles tanto en escalas discretas como continuas, y espero seguir
añadiendo más. ¡Cualquier sugerencia es bienvenida (҂◡\_◡) ᕤ !

  

## Instalación

``` r

install.packages(c("remotes"))
remotes::install_github("mariameraz/tlapalli")
```

# Paletas

## ☆ Continuas

![Continuous tlapalli palettes](reference/figures/continuous.png)

## ☆ Discretas

![Discrete tlapalli palettes](reference/figures/categorical.png)

## Ejemplos

Ejemplos básicos de ocmo usar nuestras paletas de colores:

``` r

library(tlapalli)
library(ggplot2)

# Ver las paletas disponibles
names(tlapalli)
#>  [1] "DiaDeMuertos"   "LosTemerarios"  "Altata"         "Culiacan"      
#>  [5] "Atlas"          "Momoto"         "Tecate"         "LosTemerarios2"
#>  [9] "Alicante"       "Jade"           "Obsidiana"      "Ambar"         
#> [13] "Cempasuchil"    "Azulillo"       "CartaBlanca"    "PacificoClara" 
#> [17] "PacificoLight"  "PacificoSuave"  "Conchas"        "Venado8"       
#> [21] "Coqueta"        "Quetzal"        "Ofrenda"        "Cosecha"       
#> [25] "Valle"

# Obtener los colores de una paleta
tlapalli_pal("Ambar")
#> [1] "#211b08" "#6b3b06" "#a16d07" "#c5b82d" "#c8e8da"

# Interpolar colores para obtener una paleta de 10 colores
tlapalli_pal("Ambar", n = 10, type = "continuous")
#>  [1] "#201A07" "#402909" "#623707" "#7C4B06" "#946107" "#A97D10" "#B99E20"
#>  [8] "#C7BD45" "#CCD291" "#C7E7D9"
```

``` r

# Mostrar paletas de colores en fondo negro
tlapalli_show("Venado8", background = "black")
```

![](reference/figures/README-example5-1.png)

``` r

tlapalli_show("Altata", n = 100, type = "continuous", background = "both")
```

![](reference/figures/README-example6-1.png)

``` r

# Escala continua en ggplot2
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
   geom_tile() +
   scale_fill_tlapalli_c("Azulillo") +
   theme_minimal()
```

![](reference/figures/README-example1-1.png)

``` r

# Escala discreta en ggplot2
ggplot(mpg, aes(class, fill = class)) +
  geom_bar() +
  scale_fill_tlapalli_d("Quetzal") +
  theme_bw()
```

![](reference/figures/README-example2-1.png)

``` r

# Paleta discreta en R base
barplot(1:6, col = tlapalli_pal("PacificoSuave"))
```

![](reference/figures/README-example3-1.png)

``` r

# Paleta continua en R base
image(volcano, col = tlapalli_pal("Ambar", n = 100, type = "continuous"))
```

![](reference/figures/README-example4-1.png)
