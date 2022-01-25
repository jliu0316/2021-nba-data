install.packages("tidyverse")

#code
library(readr) #must be run everytime R is started
library(dplyr)

nbagames_2021 <- read_csv("https://raw.githubusercontent.com/MattC137/Open_Data/master/Data/Sports/NBA/NBA_2021_Games.csv")

View(
  nbagames_2021 %>% filter(Result == "To Be Det.", !is.na(Money_Line)) %>% 
    select(Date, Team, Opponent, Line_Favored, Line_Amount, Over_Under, Money_Line, Money_Line_Opp, Implied_Odds, Implied_Odds_Opp)
)

boxscore_2021 <- read_csv("https://raw.githubusercontent.com/MattC137/Open_Data/master/Data/Sports/NBA/NBA_2021_Box_Score.csv")

nbaplayers_2021 <- read_csv("https://raw.githubusercontent.com/MattC137/Open_Data/master/Data/Sports/NBA/NBA_2021_Players.csv")