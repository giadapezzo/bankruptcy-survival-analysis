library(gtsummary)
library(tidyverse)
library(gt)
library(naniar)

# This CSV file should be manually generated from preparation before dropping the NAs
df <-read.csv("data.csv")

df <- df %>% replace_with_na(replace = list(ateco_code_right = "")) # replace empty rows with nan values for the ateco_code column
df$distance <- as.factor(df$distance)
df$size<-as.factor(df$size)
df2 <- df %>% mutate(nans = ifelse(is.na(df$ateco_code_right), 1, 0)) # creating a dummy column with as values 1 if nan, 0 otherwise
# creating the summary table
df2 %>% mutate(status = if_else(status == "true", 'Failed', 'Not Failed'))  %>%
  tbl_summary(
    by = status, # split table by group
    include = c(size, distance, nans),
    label = list(nans ~ "Missing or abnormal ATECO"),
    missing = "ifany", # don't list missing data separately
    perc = 'row',
    statistic = list(
      #all_continuous()  ~ "{mean} ({sd})"
      all_categorical()  ~ "{n} ({p}%)",
      "nans"~ "{n}")
  ) %>%
  add_overall(last = T, col_label="**Overall**, N={N}", statistic =  ~ "{n}") 