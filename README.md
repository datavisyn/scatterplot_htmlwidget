Datavisyn-Scatterplot as htmlwidget
===================================

This is a [htmlwidget](http://www.htmlwidgets.org/) wrapper around the JavaScript library [Datavisyn Scatterplot](https://github.com/datavisyn/datavisyn-scatterplot). 

Installation
------------

```R
devtools::install_github("datavisyn/scatterplot_htmlwidget")
library(datavisynScatterplot)
```

Examples
--------

```R
datavisynScatterplot(x=mtcars$mpg,y=mtcars$hp)
```
