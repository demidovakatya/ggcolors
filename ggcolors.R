require(gg)

color.list <- colors()
grey.list <- color.list[152:253]
color.list <- color.list[-c(152:253, 260:361)]

gg.gr <- data.frame(x=rep(1:6, 17), y=rep(1:17, each=6),c=grey.list, stringsAsFactors = F)

gg.colors <- data.frame(x=rep(1:5, 90), y=rep(1:90, each=5), c=color.list[-c(451:453)], stringsAsFactors = F)

ggplot(gg.colors, aes(x=x, y=y, fill=c)) + 
        geom_tile() + 
        scale_fill_identity() + 
        scale_colour_identity() + 
        scale_x_continuous(name="", breaks=NULL, expand=c(0, 0)) + 
        scale_y_continuous(name="", breaks=NULL, expand=c(0, 0)) + 
        geom_text(aes(label=c), colour="black", size=2) 
ggsave("colors.png", height = 14)

ggplot(gg.gr, aes(x=x, y=y, fill=c)) + 
        geom_tile() + 
        scale_fill_identity() + 
        scale_colour_identity() + 
        scale_x_continuous(name="", breaks=NULL, expand=c(0, 0)) + 
        scale_y_continuous(name="", breaks=NULL, expand=c(0, 0)) + 
        geom_text(aes(label=c), colour="steelblue1", size=3) 
ggsave("greys.png")

