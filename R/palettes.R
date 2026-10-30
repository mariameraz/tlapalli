# Palettes
#' tlapalli color palettes
#'
#' List of palette names and their hex color.
#'
#' @format A named list with one element per palette.
#' @export

tlapalli <- list(
  # Continuous
  Altata = c("#045e7e", "#5aabf2", "#f7f0c1", "#ff9565", "#914410"),
  AltataSoft = c("#0082ae", "#90d3fa", "#f7f0c1", "#ff9475", "#8e5730"),
  DiaDeMuertos = c("#78761f","#e1a235","#f7f0c1", "#bb3195", "#331d69"),
  DiaDeMuertosSoft = c("#a3a24a","#f3c34e","#f7f0c1", "#cd67b5", "#4e4076"),
  Venado8 = c("#b80601", "#f0a30e","#6698a9","#862762","#000830"),
  Venado8Soft = c("#b64a42", "#ecc070","#7cbacf","#a9489a","#31374d"),
  LosTemerarios = c("#fd3c0e", "#fb9505", "#fde006",  "#ffffff", "#68b7d3","#8187d8", "#082577"),
  Atlas = c("#243a4f", "#385f99", "#4f89be", "#e1c2b1", "#b55866", "#5c4d5a", "#000000"),
  MariaElote = c("#fcf299", "#b7cc89","#3c7421","#361b12" ),

  # Continuous: Monochromatic
  Tecate = c("#202020", "#820000", "#ee0002", "#dadada" ),
  LosTemerarios2 = c("#0f1d39", "#155483", "#49617d", "#7fa0aa", "#dde7f4", "#e3edfb"),
  Jade = c("#000903", "#012a12","#105228","#1d6f30", "#328b4d", "#359768","#a9d4c6" ),
  Obsidiana = c("#0c0e1c", "#2e2d40","#43405d", "#734f64","#957368"),
  Ambar = c("#292205", "#4f1400", "#842d01","#c37a40", "#f0ac0c", "#f7f0c1"),
  # Continuous: Three colors
  Indio = c("#d40c22","#c98b18", "#095337"),
  CartaBlanca = c("#a01d2b", "#e8e1c9", "#bb9735" ),

  # Categories: 6 colors
  Pacifico = c("#009fd2","#f5c429","#92711c", "#d6362a", "#4e7a20", "#6c341f"),
  PacificoLight = c("#e9cf12", "#8b8b88","#0e9ae9", "#053774", "#f7182c", "#474d2d"),
  PacificoSuave = c("#ded8b3", "#ea5560", "#a2833b", "#62709a", "#079a62", "#1e3b54"),

  # Categories: 4 colors
  Conchas = c("#f39ea4", "#80452e", "#ecc653", "#dabf9f"),

  # Categories: 3 colors
  Mascara = c("#038b7b","#f79b2d", "#853a28")
)

#' Names of the categorical palettes
#'
#' Categorical palettes should be used as discrete colors, not interpolated.
#'
#' @export
tlapalli_categorical <- c("Pacifico", "PacificoLight", "PacificoSuave",
                          "Conchas", "Mascara")
