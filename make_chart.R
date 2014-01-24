library(package=ggplot2)
library(package=extrafont)
library(package=reshape2)
library(package=grid)

xkcd1205 <- read.csv('xkcd1205.csv', stringsAsFactors=FALSE)
xkcd1205[xkcd1205==''] <- NA
xkcd1205 <- melt(data=xkcd1205, id.vars='shave_off',
                 variable.name='frequency', value.name='time_spent')
xkcd1205$frequency <- sub(pattern='X', replacement='', x=xkcd1205$frequency)
xkcd1205$frequency <- sub(pattern='[.]', replacement='/', x=xkcd1205$frequency)
xkcd1205$frequency <- factor(x=xkcd1205$frequency, ordered=TRUE,
                             levels=c("50/day", "5/day",
                                      "Daily", "Weekly",
                                      "Monthly", "Yearly"))
xkcd1205$shave_off <- factor(x=xkcd1205$shave_off, ordered=TRUE,
                             levels=rev(c('1 second', '5 seconds', '30 seconds',
                                      '1 minute', '5 minutes', '30 minutes',
                                      '1 hour', '6 hours', '1 day')))

# Usar Humor Sans
# font_import(".")
# loadfonts()

windowsFonts(Humor=windowsFont("Humor Sans"))
# Sys.setenv(R_GSCMD = "C:/Program Files/gs/gs9.04/bin/gswin64c.exe")

# Prueba cruda
original <- ggplot(data=xkcd1205) +
  geom_tile(aes(x='', y=shave_off, fill=is.na(time_spent)),
            color='grey20', size=1) +
  geom_text(family="Humor", aes(x='', y=shave_off, label=time_spent)) +
  scale_fill_manual(values=c(NA, 'grey30')) +
  guides(fill=FALSE) +
  facet_grid(facets=.~frequency) +
  labs(title='How often do you do the task',
       y='How\nmuch\ntime\nyou\nshave\noff', x=NULL) +
  theme_minimal() +
  theme(text=element_text(size=26, family="Humor"),
        axis.title.y=element_text(hjust=1, angle=0),
        strip.background=element_blank(),
        axis.ticks=element_blank(),
        panel.grid=element_blank(),
        panel.margin = grid::unit(0 + 0, "lines"))

# Dibujar la gráfica
original

# Agregar bracket de eje y
grid.polyline(x=c(0.1, 0.07, 0.07, 0.07, 0.07, 0.1),
              y=c(0.1, 0.1, 0.28, 0.63, 0.8, 0.8),
              id=c(rep(1, 3), rep(2,3)),
              gp=gpar(col='grey20', lwd=3))

# Agregar bracket de título
grid.polyline(x=c(0.26, 0.26, 0.32, 0.9, 0.97, 0.97),
              y=c(0.9, 0.93, 0.93, 0.93, 0.93, 0.9),
              id=c(rep(1, 3), rep(2,3)),
              gp=gpar(col='grey20', lwd=3))
