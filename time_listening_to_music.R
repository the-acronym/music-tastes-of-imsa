#Henry Wittich
#12 April 2018
#Music Listening Times

library(ggplot2)
library(plotly)

setwd("/Users/Henry Wittich/Documents/School/Senior Year/Data/Music Tastes of IMSA/")
time.data <- read.csv("class_time_listening.csv")

colors <- c('rgb(139,13,255)', 'rgb(27,190,232)', 'rgb(57,255,0)', 'rgb(232,172,12)', 'rgb(255,22,4)')
hours <- c("<30 Min.","<1 hr","1-2 Hrs","2-3 Hrs","3-4 Hrs","4+ Hrs")
seniors <- c(8.2,11.48,13.11,24.59,19.67,22.95)
juniors <- c(9.26,7.41,11.11,35.19,18.52,18.52)
sophomores <- c(7.14,14.29,28.57,18.57,15.71,15.71)

p <- plot_ly(time.data, labels = ~hours, values = ~seniors, type = 'pie',
          textinfo = 'label+percent',
          showlegend = FALSE,
          name = 'Class of 2018',
          hole = 0.6,
          sort = FALSE,
          direction = "clockwise",
          rotation = 0,
          hoverinfo = 'text',
          insidetextfont = list(color = '#FFFFFF'),
          text = ~paste("<b>","Class of 2018: ",seniors,"</b><br>","Class of 2019: ",juniors,"<br>","Class of 2020: ",sophomores,"<br>"),
          domain = list(x = c(0, 0.4), y = c(0.4, 1)),
          marker = list(colors = colors, line = list(color = '#FFFFFF', width = 2))) %>%
  add_trace(labels = ~hours, values = ~juniors, type = 'pie',
            textinfo = 'label+percent',
            name = "Class of 2019",
            hole = 0.6,
            sort = FALSE,
            direction = "clockwise",
            rotation = 0,
            hoverinfo = 'text',
            insidetextfont = list(color = '#FFFFFF'),
            text = ~paste("Class of 2018: ",seniors,"<br>","<b>","Class of 2019: ",juniors,"</b><br>","Class of 2020: ",sophomores,"<br>"),
            domain = list(x = c(0.25, 0.75), y = c(0, 0.6)),
            marker = list(colors = colors,line = list(color = '#FFFFFF', width = 2))) %>%
  add_trace(labels = ~hours, values = ~sophomores, type = 'pie',
          textinfo = 'label+percent',
          name = "Class of 2020",
          hole = 0.6,
          sort = FALSE,
          direction = "clockwise",
          rotation = 0,
          hoverinfo = 'text',
          insidetextfont = list(color = '#FFFFFF'),
          text = ~paste("Class of 2018: ",seniors,"<br>","Class of 2019: ",juniors,"<br>","<b>","Class of 2020: ",sophomores,"</b><br>"),
          domain = list(x = c(0.6, 1), y = c(0.4, 1)),
          marker = list(colors = colors,line = list(color = '#FFFFFF', width = 2))) %>%
  layout(title = ~paste("Class of 2018       |       Class of 2019       |       Class of 2020"),
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

p

Sys.setenv("plotly_username"="hwittich")
Sys.setenv("plotly_api_key"="xPxLWw3BhcNVJEdieFDJ")

api_create(p, filename = "time_listening")