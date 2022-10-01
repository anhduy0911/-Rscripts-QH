library(GGally)

big_data <- read.csv('./data/ablation.csv')
big_data
cairo_ps(file = "parr_ablation.eps", onefile = TRUE, fallback_resolution = 800, width=9, height=4)
# ggparcoord(data = big_data,
#            columns = 2:7,
#            showPoints = TRUE,
#            alphaLines = 0.7,
#            scale='globalminmax',
#            groupColumn = "Models") +
#     theme_ipsum() +
#     scale_color_viridis(discrete=TRUE)

ggparcoord(data=big_data,
           columns = 2:7, groupColumn="Models", 
           scale='globalminmax',
           showPoints = TRUE,
           alphaLines = 0.3
) +
  scale_color_viridis(discrete=TRUE) +
  theme_ipsum() + 
  labs(y= "Average Precision", x = "Metrics") +
  theme(
    # remove the vertical grid lines
    panel.grid.minor.x = element_line( size=.1, color="black" ),
    # axis.text.y = element_text(face="bold", color="#993333", 
    #                            size=14),
    # explicitly set the horizontal lines (or they will disappear too)
    # panel.grid.major.y =  element_blank(),
    panel.grid.minor.y = element_blank()
  )

dev.off()