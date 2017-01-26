#' DatavisynScatterplot module
#'
#' a htmlwidget wrapper around datavisyn scatterplot (http://caleydo.org/datavisyn/datavisyn-scatterplot)
#'
#' @import htmlwidgets
#'
#' @export
datavisynScatterplot <- function(x, y, xlab='x', ylab='y', width = NULL, height = NULL, elementId = NULL) {


  # forward options using x
  x = list(
    data=data.frame(x = x, y = y),
    options=list(xlabel=xlab, ylabel=ylab, xlim=c(min(x),max(x)), ylim=c(min(y),max(y)))
  )
  # create widget
  htmlwidgets::createWidget(
    name = 'datavisynScatterplot',
    x,
    width = width,
    height = height,
    package = 'datavisynScatterplot',
    elementId = elementId
  )
}

#' Shiny bindings for datavisynScatterplot
#'
#' Output and render functions for using datavisynScatterplot within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a datavisynScatterplot
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name datavisynScatterplot-shiny
#'
#' @export
datavisynScatterplotOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'datavisynScatterplot', width, height, package = 'datavisynScatterplot')
}

#' @rdname datavisynScatterplot-shiny
#' @export
renderDatavisynScatterplot <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, datavisynScatterplotOutput, env, quoted = TRUE)
}
