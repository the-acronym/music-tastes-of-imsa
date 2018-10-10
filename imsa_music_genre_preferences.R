#Henry Wittich
#18 December 2017
#Music Genres Box and Whisker Plot

library(ggplot2)
library(plotly)

setwd("/Users/Henry Wittich/Documents/School/Senior Year/Data/Music Tastes of IMSA/")
genres.data <- read.csv("genre_percentages.csv")

p <- plot_ly(genres.data, x = ~Hate, y = ~Genre, type = 'bar', orientation = 'h', name = "Hate", marker = list(color = "#635A7F"), hoverinfo = "text", text = ~paste(Hate,"% of people hate", Genre, "music")) %>%
  add_trace(x = ~Dislike, name = "Dislike", 
            marker = list(color = "#9F8FCC"), hoverinfo = "text", text = ~paste(Dislike,"% of people dislike", Genre, "music")) %>%
  add_trace(x = ~Meh, name = "No Preference",
            marker = list(color = '#C6B3FF'), hoverinfo = "text", text = ~paste(Meh,"% of people have no preference towards", Genre, "music")) %>%
  add_trace(x = ~Like, name = "Like",
            marker = list(color = '#8258FF'), hoverinfo = "text", text = ~paste(Like,"% of people like", Genre, "music")) %>%
  add_trace(x = ~Love, name = "Love",
            marker = list(color = '#290B7F'), hoverinfo = "text", text = ~paste(Love,"% of people love", Genre, "music")) %>%
  layout(xaxis = list(fixedrange = TRUE, title = "Preference"), yaxis = list(fixedrange = TRUE, title = ''), title = 'Music Genre Preferences', barmode = 'stack')

p

Sys.setenv("plotly_username"="hwittich")
Sys.setenv("plotly_api_key"="xPxLWw3BhcNVJEdieFDJ")
api_create(p, filename = "music_genre_preferences")