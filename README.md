# MechaCar_Statistical_Analysis


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

* Is the slope of the linear model considered to be zero? Why or why not?

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Linear Regression to Predict MPG

![summary](https://github.com/jdfiel/MechaCar_Statistical_Analysis/blob/main/Resources/lm_summary.png)

The vehicle_length, ground_clearance and intercept variables are likely to have provided a non-random amount variance to the mpg values in the data.

Since the coefficients are not zero, the slope cannot be zero.

This linear model does not predict mpg as as the statistical significance of the intercept indicates that there are other variables that need to be considered.

## Summary Statistics on Suspension Coils

![total_summary](https://github.com/jdfiel/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

![lot_summary](https://github.com/jdfiel/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

Looking at the total summary it looks like all lots fall within the threshold of 100 PSI variance. However, the mean is slightly lower than the median, suggesting a left skew.

Looking at the lot summary, we see that Lot 3 has a variance of 170 PSI, which is notably above the acceptable threshold.

## T-Tests on Suspension Coils

![test](https://github.com/jdfiel/MechaCar_Statistical_Analysis/blob/main/Resources/total.png)

The p-value of 0.06 suggests that we cannot reject the null hypothesis that the sample mean is different than the population’s

![test1](https://github.com/jdfiel/MechaCar_Statistical_Analysis/blob/main/Resources/lot1.png)

The p-value of 1 suggests that the null hypothesis is absolutely true.

![test2](https://github.com/jdfiel/MechaCar_Statistical_Analysis/blob/main/Resources/lot2.png)

The p-value of 0.6 suggests that there is a strong chance that the null hypothesis is not false

![test3](https://github.com/jdfiel/MechaCar_Statistical_Analysis/blob/main/Resources/lot3.png)

The p-value of 0.04168 suggest that we can reject the null hypothesis -- the sample mean is different than the population’s.


## Study Design: MechaCar vs Competition

To compare the Mechacar to the competition, we can choose to compare the ground clearance of the Mechacar to the competitors.

To analyze this feature, we can consider the following hypothesis: 

* H(0): There is no difference in the mean ground clearance of MechaCar and the mean ground clearance of competition 

* H(a): There is a difference in the mean ground clearance of MechaCar and the mean mean ground clearance of competition 

### Statistical test:

To compare the ground clearance of the Mechacar to competitors, we can conduct an ANOVA test. The Mechacar will have competition from various manufacturers. Comparing the ground clearance per vehicle per manufacturer will help to determine how the Mechacar ground clearance compares to other models and which manufacturers should be considered. For instance, if the Mechacar is sold in the Americas but the competition is sold in Asia, this would affect the level of competition they pose.

### Data:

For this analysis, we would need to look at categorical data to determine if the competition is in the same category (ex. SUV or Sedan) as well as the manufacturer. We will also need to analyze continuous numerical data of the actual ground clearance of the vehicle itself.