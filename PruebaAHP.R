install.packages("ahp")
devtools::install_github("calote/ahp", build_vignettes = TRUE)
devtools::install_github("calote/ahp")
library(ahp)
#install.packages("markdown")
ahp::RunGUI()

##########################3
dtmul <- Load("ejmultinivel.ahp")
dtmul

Calculate(dtmul)
print(dtmul, priority = function(x) x$parent$priority["Total", x$name])

Visualize(dtmul)

t1 <- AnalyzeTable(dtmul)
formattable::as.htmlwidget(t1)

t1b <- AnalyzeTable(dtmul, sort = "orig")
formattable::as.htmlwidget(t1b)

t2 <- AnalyzeTable(dtmul, variable = "priority", sort = "orig")
formattable::as.htmlwidget(t2)

