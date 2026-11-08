#' Get colors from a palette
#'
#' @param name Name of the palette (see `names(tlapalli)`).
#' @param n Number of colors to return. If `NULL` (default), returns all
#'   original colors in the palette.
#' @param type `"discrete"` takes the first `n` colors; `"continuous"`
#'   interpolates between them to create `n` colors.
#' @param direction Direction of the palette. `1` (default) uses the original
#'   order; `-1` reverses it.
#'
#' @return A character vector of hex colors.
#' @examples
#' tlapalli_pal("Ambar")
#' tlapalli_pal("Ambar", n = 20, type = "continuous")
#' tlapalli_pal("Ambar", direction = -1)
#' @export
#'
tlapalli_pal <- function(name, n = NULL, type = c("discrete", "continuous"),
                         direction = 1) {
  type <- match.arg(type)

  if (!name %in% names(tlapalli)) {
    stop("Palette not found. Available palettes: ",
         paste(names(tlapalli), collapse = ", "), call. = FALSE)
  }

  if (!direction %in% c(1, -1)) {
    stop("`direction` must be 1 or -1.", call. = FALSE)
  }

  cols <- tlapalli[[name]]

  if (direction == -1) cols <- rev(cols)

  if (is.null(n)) return(cols)

  if (type == "continuous") {
    return(grDevices::colorRampPalette(cols, space = "Lab")(n))
  }

  if (n > length(cols)) {
    stop("Palette '", name, "' only has ", length(cols), " colors.", call. = FALSE)
  }
  cols[seq_len(n)]
}

#' Continuous fill scale
#'
#' @param name Name of the palette.
#' @param direction Direction of the palette. `1` (default) uses the original
#'   order; `-1` reverses it.
#' @param ... Other arguments passed to [ggplot2::scale_fill_gradientn()].
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
#'   geom_tile() +
#'   scale_fill_tlapalli_c("Atlas2")
#'
#' @export
scale_fill_tlapalli_c <- function(name, direction = 1, ...) {
  ggplot2::scale_fill_gradientn(
    colours = tlapalli_pal(name, direction = direction), ...
  )
}

#' Continuous colour scale
#' @inheritParams scale_fill_tlapalli_c
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(faithfuld, aes(waiting, eruptions, colour = density)) +
#'   geom_point(size = 3) +
#'   scale_colour_tlapalli_c("Ofrenda")
#'
#' @export
scale_colour_tlapalli_c <- function(name, direction = 1, ...) {
  ggplot2::scale_colour_gradientn(
    colours = tlapalli_pal(name, direction = direction), ...
  )
}

#' Discrete fill scale
#' @inheritParams scale_fill_tlapalli_c
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   scale_fill_tlapalli_d("Quetzal")
#'
#' @export
scale_fill_tlapalli_d <- function(name, direction = 1, ...) {
  ggplot2::scale_fill_manual(
    values = tlapalli_pal(name, direction = direction), ...
  )
}

#' Discrete colour scale
#' @inheritParams scale_fill_tlapalli_c
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(displ, hwy, colour = class)) +
#'   geom_point() +
#'   scale_colour_tlapalli_d("Ofrenda")
#'
#' @export
scale_colour_tlapalli_d <- function(name, direction = 1, ...) {
  ggplot2::scale_colour_manual(
    values = tlapalli_pal(name, direction = direction), ...
  )
}

#' Show a palette
#'
#' Plots a palette on a white or/and black background. Optionally,
#' shows simulations of how it looks under deuteranopia, protanopia,
#' tritanopia and in grayscale. Palettes with more than 15 colors are drawn
#' as a continuous bar.
#'
#' @inheritParams tlapalli_pal
#'
#' @param background `"white"` (default) or `"black"` draws a single panel;
#'   `"both"` draws a white and a black panel.
#' @param simulations Logical. If `TRUE` (default), shows color vision
#'   deficiency simulations and a grayscale version below the original colors.
#'
#' @return The palette colors as a character vector, invisibly.
#'
#' @examples
#' tlapalli_show("Ambar")
#' tlapalli_show("Ambar", background = "black", simulations = FALSE)
#' tlapalli_show("Ambar", background = "both")
#' tlapalli_show("Ambar", n = 100, type = "continuous")
#'
#' @export
#'
tlapalli_show <- function(name, n = NULL, type = c("discrete", "continuous"),
                          direction = 1,
                          background = c("white", "black", "both"),
                          simulations = TRUE) {
  type <- match.arg(type)
  background <- match.arg(background)

  cols <- as.character(
    tlapalli_pal(name, n = n, type = type, direction = direction)
  )
  k <- length(cols)

  versions <- list("Original" = cols)
  if (simulations) {
    versions[["Deuteranopia"]] <- colorspace::deutan(cols)
    versions[["Protanopia"]] <- colorspace::protan(cols)
    versions[["Tritanopia"]] <- colorspace::tritan(cols)
    versions[["Monocrom\u00e1tica"]] <- colorspace::desaturate(cols)
  }
  nr <- length(versions)

  panels <- switch(background,
                   both  = list(c("white", "black"), c("black", "white")),
                   white = list(c("white", "black")),
                   black = list(c("black", "white"))
  )

  # Layout
  continuous <- k > 15 # when many colors are asked, draw a continuous bar
  cell_w <- min(2, 12 / k) # ensure the bar never exceeds 12 units in width
  cell_h <- 0.85
  label_w <- 4
  panel_w <- label_w + k * cell_w + (if (continuous) 0.3 else 1.5)
  hdr <- if (continuous) 0.3 else 1.4
  panel_h <- hdr + nr + 0.1
  gap <- 0.3
  title_h <- 0
  total_h <- title_h + length(panels) * panel_h + (length(panels) - 1) * gap

  op <- graphics::par(mar = c(0.3, 0.3, 0.3, 0.3), bg = "white",
                      xaxs = "i", yaxs = "i")
  on.exit(graphics::par(op))

  graphics::plot.new()
  graphics::plot.window(xlim = c(0, panel_w), ylim = c(total_h, 0), asp = 1)

  draw_panel <- function(y0, bg, fg) {
    graphics::rect(0, y0, panel_w, y0 + panel_h, col = bg, border = NA)

    xs <- label_w + (seq_len(k) - 1) * cell_w

    if (!continuous) {
      graphics::text(xs + cell_w / 2 - 0.3, y0 + hdr + 0.1,
                     labels = tolower(cols), srt = 45, adj = c(0, 0),
                     cex = 0.7, col = fg, xpd = NA)
    }

    pad <- if (continuous) 0 else 0.05

    for (i in seq_len(nr)) {
      yc <- y0 + hdr + i - 0.5
      graphics::text(label_w - 0.3, yc, names(versions)[i],
                     adj = c(1, 0.5), col = fg)
      graphics::rect(xs + pad, yc - cell_h / 2,
                     xs + cell_w - pad, yc + cell_h / 2,
                     col = versions[[i]],
                     border = if (continuous) versions[[i]] else NA,
                     lwd = 0.5)
    }
  }

  for (j in seq_along(panels)) {
    y0 <- title_h + (j - 1) * (panel_h + gap)
    draw_panel(y0, bg = panels[[j]][1], fg = panels[[j]][2])
  }

  invisible(cols)
}
