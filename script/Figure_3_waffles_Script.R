library(waffle)
library("colorspace")
install.packages("RColorBrewer")
library("RColorBrewer")
brewer.pal(n = 6, name = "Greens")
[1] "#EDF8E9" "#C7E9C0" "#A1D99B" "#74C476" "#31A354" "#006D2C"
brewer.pal(n = 6, name = "Oranges")
[1] "#FEEDDE" "#FDD0A2" "#FDAE6B" "#FD8D3C" "#E6550D" "#A63603"
brewer.pal(n = 6, name = "Greys")
[1] "#F7F7F7" "#D9D9D9" "#BDBDBD" "#969696" "#636363" "#252525"

brewer.pal(n = 8, name = "BuPu")
[1] "#F7FCFD" "#E0ECF4" "#BFD3E6" "#9EBCDA" "#8C96C6" "#8C6BB1" "#88419D" "#6E016B"
brewer.pal(n = 8, name = "RdPu")
"#FFF7F3" "#FDE0DD" "#FCC5C0" "#FA9FB5" "#F768A1" "#DD3497" "#AE017E" "#7A0177"
brewer.pal(n = 8, name = "YlOrRd")
"#FFFFCC" "#FFEDA0" "#FED976" "#FEB24C" "#FD8D3C" "#FC4E2A" "#E31A1C" "#B10026"

theme_set(theme_classic())
text_size <-  18
x <- c("Trained adult" = 21, "Trained juvenile" = 5, "Trained NS" = 3,
  "Nontrained adult" = 19, "Nontrained juvenile" = 1, "Nontrained NS" = 19, 
   "Naive adult" = 3, "Naive juvenile" = 7, "Naive NS" = 2)
w1<-waffle(x, rows = 10, colors = c("#31A354", "#A1D99B", "#EDF8E9",
  "#E6550D", "#FDAE6B", "#FEEDDE", "#252525","#969696", "#D9D9D9"),
       legend_pos = "bottom", title = "Training and age of birds in experiments")
w1+theme(legend.text=element_text(size=15))

z <- c("Km2 single" = 1, "Km2 dual" = 5, "Km2 multiple" = 5, "Km2 NS" = 7, 
       "M2 single" = 8, "M2 dual" = 20, "M2 multiple" = 12, "M2 NS" = 6, 
       "Cm2 single" = 7, "Cm2 dual" = 5, "Cm2 multiple" = 3, "Cm2 NS" = 1)
w2<-waffle(z, rows = 10, colors = c("#88419D" , "#8C96C6", "#BFD3E6","#E0ECF4",
                                     "#AE017E", "#F768A1", "#FCC5C0", "#FDE0DD",
                                     "#FC4E2A", "#FEB24C", "#FED976", "#FFFFCC"),
                                             legend_pos = "bottom", title = "Size and type of the experiment")
w2+theme(legend.text=element_text(size=15))
       
require(gridExtra)
all_plots<-grid.arrange(w1, w2, ncol=1)


