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
  AltataSoft = c("#335C73","#7AA9DC","#F5F0CF","#EC9D80","#854B32"),
  DiaDeMuertos = c("#78761f","#e1a235","#f7f0c1", "#bb3195", "#331d69"),
  DiaDeMuertosSoft = c("#777543", "#d5a569", "#f5f0cf", "#a64b89", "#312456"),
  Venado8 = c("#b80601", "#f0a30e","#6698a9","#862762","#000830"),
  Venado8Soft = c("#da6363", "#fabd7c", "#96b6c2", "#a96c8d", "#4b4c55"),
  LosTemerarios = c("#fd3c0e", "#fb9505", "#fde006",  "#ffffff", "#68b7d3","#8187d8", "#082577"),
  LosTemerariosSoft = c("#ff867d", "#ffb581", "#ffe987", "#ffffff", "#8dcee7", "#a4a9f2", "#5a629b"),
  Atlas = c("#243a4f", "#385f99", "#4f89be", "#e1c2b1", "#b55866", "#5c4d5a", "#000000"),
  AtlasSoft = c("#4c5d71", "#5c7db6", "#6ba0d6", "#eccdbc", "#d17380", "#7b6d7a", "#303030"),
  Maria = c("#fcf299", "#b7cc89","#3c7421","#361b12" ),
  MariaSoft = c("#fff59c", "#c3d895", "#5b9147", "#5a433d"),

  # Continuous: Monochromatic
  Tecate = c("#202020", "#820000", "#ff0001", "#dadada" ),
  TecateSoft = c("#333333", "#873333", "#f45353", "#dedede"),
  LosTemerarios2 = c("#0f1d39", "#155483", "#7fa0aa", "#e3edfb"),
  LosTemerarios2Soft = c("#444a54", "#3a69ab", "#93b3bd", "#e7f1ff"),
  Jade = c("#000903", "#012a12","#105228","#1d6f30", "#328b4d", "#359768","#a9d4c6" ),
  Obsidiana = c("#0c0e1c", "#4c496b", "#855b74","#b1897c", "#deccc5"),
  Ambar = c("#292904", "#621900", "#943200","#cb4c23", "#f0ac0c", "#f7f0c1"),
  # Continuous: Three colors
  Indio = c("#911973","#F7B231", "#5F750B"),
  CartaBlanca = c("#A30031", "#CFD7C3", "#DFC04E" ),

  # Categories: 6 colors
  Pacifico = c("#A60000", "#098068","#009fd2","#f5c429","#F27D00", "#DBB695"),
  PacificoLight = c("#053774","#474d2d", "#0B79B8", "#FF4F5F", "#9E9E9B","#e9cf12"),
  PacificoSuave = c("#1e3b54", "#59668C","#D6565F", "#35B097", "#F7B145", "#ded8b3"),

  # Categories: 4 colors
  Conchas = c("#80452e","#DE7C84", "#ecc653", "#E8E0B0"),

  # Categories: 3 colors
  Mascara = c("#853a28", "#038b7b","#f79b2d")
)

#' Names of the categorical palettes
#'
#' Categorical palettes should be used as discrete colors, not interpolated.
#'
#' @export
tlapalli_categorical <- c("Pacifico", "PacificoLight", "PacificoSuave",
                          "Conchas", "Mascara")
