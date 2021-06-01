library(tidyverse)
mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg) #create linear model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = mpg))
##determine the p-value and the r-squared value for the linear regression model

suspension_coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset

# create total_summary for PSI
total_summary <- suspension_coil %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI),
            SD = sd(PSI),
            .groups = "keep")

# create total_summary for lot
lot_summary <- suspension_coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI),
            SD = sd(PSI),
            .groups = "keep")

# Determine if the PSI across all manufacturing lots is stattistically different from the population mean of 1,500 pounds per suqare inch
t.test(suspension_coil$PSI, mu = 1500)

# per lot
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)

