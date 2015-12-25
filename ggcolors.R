

clrs <- colors()
is.gr <- c(152:253, 260:361)

gg.gr <- data.frame(x=rep(1:12, 17), y=rep(1:17, each=12),c=clrs[is.gr], stringsAsFactors = F)
gg.colors <- data.frame(x=rep(1:10, 45), y=rep(1:45, each=10), c=clrs[-c(is.gr,655:657)], stringsAsFactors = F)

ggplot(gg.colors, aes(x=x, y=y, fill=c)) + geom_tile() + 
  scale_fill_identity() + scale_colour_identity() + scale_x_continuous(name="", breaks=NULL, expand=c(0, 0)) + scale_y_continuous(name="", breaks=NULL, expand=c(0, 0)) + geom_text(aes(label=c), colour="black", size=2) 
ggsave("colors.png")

ggplot(gg.gr, aes(x=x, y=y, fill=c)) + geom_tile() + 
  scale_fill_identity() + scale_colour_identity() + scale_x_continuous(name="", breaks=NULL, expand=c(0, 0)) + scale_y_continuous(name="", breaks=NULL, expand=c(0, 0)) + geom_text(aes(label=c), colour="steelblue1", size=3) 
ggsave("greys.png")

