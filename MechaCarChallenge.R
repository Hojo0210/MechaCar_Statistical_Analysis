
library(dplyr)

# read file
mecha_df <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# multiple lin reg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)

# summary stats
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)) 

# suspension coil summary stats
sus_coils <- read.csv(file = 'Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# total summary df
total_summary <- sus_coils %>% summarize(Mean= mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 

# lot summary df
lot_summary <- sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 

# suspension coil t test
t.test(sus_coils$PSI, mu = 1500)

#lot 1 t test
lot_1 <- subset(sus_coils, Manufacturing_Lot == "Lot1") 
t.test(lot_1$PSI, mu = 1500) 

# lot 2 t test
lot_2 <- subset(sus_coils, Manufacturing_Lot == "Lot2") 
t.test(lot_2$PSI, mu = 1500) 

# lot 3 t test
lot_3 <- subset(sus_coils, Manufacturing_Lot == "Lot3") 
t.test(lot_3$PSI, mu = 1500)
