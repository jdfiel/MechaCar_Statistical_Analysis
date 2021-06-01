library(tidyverse)
mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg) #create linear model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = mpg))
##determine the p-value and the r-squared value for the linear regression model