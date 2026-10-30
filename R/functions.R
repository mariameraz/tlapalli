#' Get colors from a palette
#'
#' @param name Name of the palette (see `names(tlapalli)`).
#' @param n Number of colors. If `NULL`, returns all the original colors.
#' @param type `"discrete"` takes the first `n` colors; `"continuous"`
#'   interpolates between them to create `n` colors.
#'
#' @return A character vector of hex colors.
#' @examples
#' tlapalli_pal("Ambar")
#' tlapalli_pal("Ambar", n = 20, type = "continuous")
#' @export
tlapalli_pal <- function(name, n = NULL, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  if (!name %in% names(tlapalli)) {
    stop("Palette not found. Available palettes: ",
         paste(names(tlapalli), collapse = ", "), call. = FALSE)
  }

  cols <- tlapalli[[name]]

  if (is.null(n)) return(cols)

  if (type == "continuous") {
    return(grDevices::colorRampPalette(cols)(n))
  }

  if (n > length(cols)) {
    stop("Palette '", name, "' only has ", length(cols), " colors.", call. = FALSE)
  }
  cols[seq_len(n)]
}

#' Continuous fill scale
#' @param name Name of the palette.
#' @param ... Other arguments passed to [ggplot2::scale_fill_gradientn()].
#' @export
scale_fill_tlapalli_c <- function(name, ...) {
  ggplot2::scale_fill_gradientn(colours = tlapalli_pal(name), ...)
}

#' Continuous colour scale
#' @inheritParams scale_fill_tlapalli_c
#' @export
scale_colour_tlapalli_c <- function(name, ...) {
  ggplot2::scale_colour_gradientn(colours = tlapalli_pal(name), ...)
}

#' Discrete fill scale
#' @inheritParams scale_fill_tlapalli_c
#' @export
scale_fill_tlapalli_d <- function(name, ...) {
  ggplot2::scale_fill_manual(values = tlapalli_pal(name), ...)
}

#' Discrete colour scale
#' @inheritParams scale_fill_tlapalli_c
#' @export
scale_colour_tlapalli_d <- function(name, ...) {
  ggplot2::scale_colour_manual(values = tlapalli_pal(name), ...)
}
