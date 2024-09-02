library(waffle)
library("colorspace")
install.packages("RColorBrewer")
library("RColorBrewer")
brewer.pal(n = 7, name = "Set2")
brewer.pal(n = 6, name = "Set1")

theme_set(theme_classic())
text_size <-  18
x <- c(Passerines = 44, Nonpasserines = 33, Bird_community = 3)
w1<-waffle(x, rows = 10, colors = c("#ba3ed6", "#13a885", "#c2a793"),
                      legend_pos = "bottom", title = "Groups of birds")
w1+theme(legend.text=element_text(size=15)) 
       
y <- c("1 species" = 47, "2-9 species" = 22, ">9 species" = 11)
w2<-waffle(y, rows = 10, colors = c("#DCDCDC", "#808080", "#202020"),
           legend_pos = "bottom", title = "Number of species used")
w2+theme(legend.text=element_text(size=15))

z <- c("Great tit" = 12, "Blue tit" = 5, "Blue petrel" = 7,"Turkey vulture" = 3, 
       "Black-chinned hummingbird" = 3, "Others" = 50)
z
w3<-waffle(z, rows = 10, colors = c("#f0e224", "#25baf5", "#5e6669", "#b55c6a", "#ff7f00", "#a7c0d4"),
           legend_pos = "bottom", title = "Species used")
w3+theme(legend.text=element_text(size=15))

a <- c("Insectivores" = 31, "Omnivores" = 12, "Piscivores" = 15, 
       "Nectariovores" = 8, "Granivores" = 5, "Predators" = 5, 
       "Frugivores" = 4)
w4<-waffle(a, rows = 10, colors = c("#66C2A5","#FC8D62","#8DA0CB","#E78AC3","#A6D854","#FFD92F","#E5C494"),
           legend_pos = "bottom", title = "Feeding guilds")
w4+theme(legend.text=element_text(size=15))

iron(w1, w2, w3, w4)
require(gridExtra)
all_plots<-grid.arrange(w1, w2, w4, w3, ncol=2)


