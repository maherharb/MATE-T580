# MATE-T580 Demo script
# This script is for downloading top 200 albums data from Billboard.com for year 1968
# The result is saved as .csv file in two different formats (long and wide)
# The dmeo is part of a Data Science lesson that teaches students how to obtain and parse data from webpages 

# Load needed libraries
library(XML)
library(stringr)
library(dplyr)
library(tidyr)
library(httr)
library(lubridate)
library(readr)

# Set working directory
setwd("C:/users/maher/Google Drive/Drexel/Teaching/Practical Data Science using R/Demos/Billboard/")

# Initialize empty data_frame that will hold chart data
chart_long <- data_frame(Album=character(), Artist=character(), Week=numeric(), Rank=numeric())

start_date <- as.Date("1968-01-06") # First top 200 chart in 1968 released on this date  
for (w in 1:52 ) { # Loop over weeks
    current_date <- start_date + 7*(w-1) 
    urladdress <- paste0("https://www.billboard.com/charts/billboard-200/", current_date)
    
    # Get the webpage with httr GET
    xmlpage <- htmlParse(rawToChar(GET(urladdress)$content))
    
    # Extract album title and artist
    album.title <- gsub("[\n]", "", xpathSApply(xmlpage, "//h2[@class='chart-row__song']", xmlValue))
    album.author <- gsub("[\n]", "", xpathSApply(xmlpage, "(//a|//span)[@class='chart-row__artist']", xmlValue))
    
    # Add extracted observations to data_frame
    chart_long <- chart_long %>% 
    bind_rows(data_frame(Album=album.title , Artist=album.author , Week=w, Rank=1:200))
    
    # Keep track of progress
    print(paste0("chart for week ", w, "fetched"))
    flush.console()
}

# Do some basic cleaning: remove leading and trailing spaces
chart_long <-  chart_long %>%
  mutate(Artist = trimws(Artist), Album = trimws(Album))

# Generate wide fromat version of the data
chart_wide <- chart_long %>%
              mutate(Week=paste0("week", sprintf("%02d", Week))) %>%
              spread(Week, Rank)

# Sort dataset based on how often the album ranked in top 5
sort_order <- apply(chart_wide[,3:54],1, function(x){ sum(x[!is.na(x)]<=5)    })
chart_wide <- chart_wide %>% 
            mutate(sort_by = sort_order) %>%
            arrange(-sort_by) %>%
            select(-sort_by)

# Save the two datasets as csv files
write_csv(chart_wide, "billboard_top200_1968_wide.csv")
write_csv(chart_long, "billboard_top200_1968_long.csv")
