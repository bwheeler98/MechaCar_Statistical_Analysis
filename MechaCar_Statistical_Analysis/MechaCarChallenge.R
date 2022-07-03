library(dplyr)
mechaCar_table <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_table))

suspension_table <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

