# music-tastes-of-imsa
A collection of data and code used in the making of the "Music Tastes of IMSA!" article for The Acronym Newspaper at the Illinois Mathematics and Science Academy.
Data was either obtained through a Google Survey sent out to the student body or sourced from lyric corpuses online. All visualizations were generated using R and Plotly.
# clean_responses.csv
Data from the student survey that has been cleaned to standardize format and spelling in favorite songs and artists responses. 
Class: Graduating class (2018, 2019, or 2020)
Hall: Residence Hall (1501-1507)
For columns 9-18, respondents were asked to rate their opinion of each genre from 1 (hate) to 5 (love).
# time_listening_to_music.R
Using data from class_time_listening.csv generates 3 pie charts that compare the amount of time spent listening to music across different graduating classes.
# imsa_music_genre_preferences.R
Using data from genre_percentages.csv generates a stacked bar chart of the IMSA student body's average opinion of various musical genres.
# lf_songlyrics.csv
Song lyrics data in bag-of-words format from the LyricFind corpus: https://www.smcnus.org/lyrics/.
lyric_ID: The ID number for the song in the LyricFind database
lyrics: The list of words used in the song, separated by semicolons. Each number is an ID number associated with a word.
# lf_songids.csv
Song ID's from the LyricFind corpus: https://www.smcnus.org/lyrics/. Lyric ID's can be matched to song titles using this.
# lf_wordids.csv
Word ID's from the LyricFind corpus: https://www.smcnus.org/lyrics/. Word ID's can be matched to the song lyrics using this.
# WIP
