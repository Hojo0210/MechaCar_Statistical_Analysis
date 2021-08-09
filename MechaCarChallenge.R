
library(dplyr)

# read file
mecha_df <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# multiple lin reg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)

# summary stats
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)) 

# suspension coil summary stats
sus_coils <- read.csv(file = 'Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# total summary table
total_summary <- sus_coils %>% summarize(Mean= mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 

# lot summary table
lot_summary <- sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 
