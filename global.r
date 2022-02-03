# global is what happens before the app (A global place for everyone to look)

library(fpp3)

sales_df <- read.csv("data/clean_sales.csv")
sales_df$date <- as.Date(sales_df$date)
sales_df <- as_tsibble(sales_df, key = c("scode", "pcode"), index = "date")
