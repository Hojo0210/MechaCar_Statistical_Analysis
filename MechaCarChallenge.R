
library(dplyr)

# read file
mecha_df <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# multiple lin reg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)

# summary stats
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)) 

