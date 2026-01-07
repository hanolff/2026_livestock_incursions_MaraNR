renv::restore()
library(tidyverse)

# Read in data
livestock_paths <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vTew0tLGRmTAjez16o55Wnhln_WgDdVpzkDIrMb_z4fPBctwurfjPwxG3Qqb65mF5yuj1aduwua2gQB/pub?gid=101170518&single=true&output=csv")
livestock_paths
# plot livestockpaths versus year
ggplot(livestock_paths, aes(x = year, y=tracks_per_km)) +
  geom_point(size=4) +
  geom_line() +
  labs(x = "Year", y = "Tracks per km boundary") +
# increase size of all fonts in the figure
  theme_bw(base_size = 18) 
ggsave("figures/livestock_paths.png", width = 6, height = 4)
