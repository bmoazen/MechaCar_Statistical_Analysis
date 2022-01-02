# MechaCar_Statistical_Analysis
In this project, we will be using R to review production data for insights that may help a manufacturing team.  We have been provided with manufacturing and performance data for the MechaCar vehicle and are tasked with looking at ways to predict miles per gallon, as well as looking at whether or not different manufacturing lots are producing within prescribed specifications.  Lastly, we are charged with designing studies to compare the performance of MechaCar with vehicle of other manufacturers.

## Tools Used
[RStudio](https://www.rstudio.com/)<br />
[MechaCar_mpg](/Data_Files/MechaCar_mpg.csv)<br />
[Suspension_Coil](/Data_Files/Suspension_Coil.csv)

## Linear Regression to Predict MPG
The results of using a linear regression model on the MechaCar_mpg data is shown below:<br />
![](/Results/LinRegSummary.PNG) <br />
[Link](/Results/LinRegSummary.PNG)<br />

From the column labeled as Pr(>|t|), we can see that vehicle length and ground clearance are unlikely to provide random amounts of variance to the linear model. This implies that these variables have a significant impact on the miles per gallon statistic. However, since the intercept itself is statistically significant (Pr(>|t|) = 5e-08), some of the variables may need scaling or transfroming to help the model become more predictive.<br />
A plot of fit residual (measured mpg - predicted mpg) as a function of car mpg is shown below. It is plain to see that the linear model is predicting too high for cars with lower mpg and too low for cars with higher mpg. Indeed, the correlation coefficient between measured mpg and predicted mpg is 0.54, indicating a moderate positive correlation. Since there is a correlation between the mpg and the fit residuals, the linear model does not adequatly descibe the data.
![](/Results/LinRegFitResiduals.PNG) <br />
[Link](/Results/LinRegFitResiduals.PNG) <br />

## Summary Statistics on Suspension Coils
The total summary statistics for the PSI in the suspension coils is given below, as well as the summary statistics grouped by manufacturing lot.<br />
![](/Results/TotalSummary.PNG) <br />
[Link](/Results/TotalSummary.PNG) <br />
![](/Results/LotSummaryStats.PNG) <br />
[Link](/Results/LotSummaryStats.PNG) <br />
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  While the variance for the suspension coils as a whole (regardless of manufacturing lot) does not exceed this limit, the coils in Lot 3 have a variance well above it (170 PSI) as shown in the bottom table. Furthermore, the total summary statistics in the top figure are skewed by the high variance of Lot 3, as the breakdown by lot shows that Lot 1 and Lot 2 have small variances. For these reasons, significant changes in Lot 3 need to be made to produce coils within the prescribed variance limit.<br />

## T-Tests on Suspension Coils
T-tests were performed on the suspension data as a whole, as well as grouped by manufacturing lot.  Shown below are the p-values for these tests, assuming a "true mean" of 1500 psi. Lot 1 had a p-value of 1, giving extremely strong reasoning for rejecting the null hypothesis that that this lot has a different mean than 1500. Lot 2 also had a high p-value (0.607), giving sufficient evidence for rejecting the null hypothesis of having a different mean than 1500.  However, Lot 3 had a p-value of 0.042, which is usually enough evidence for accepting the null hypothesis than it does have a different mean than 1500 psi. Indeed, this assertion is supported above with the fact that the Lot 3 variance was extremely high compared to the other 2 lots.  Using all of the psi data, regardless of manufacturing lot, showed a p-value of 0.06, barely above the usual 95% confidence limit for rejecting the null hypothesis.  However, this value is most certainly heavily influenced by the Lot 3 data.<br />
![](/Results/ttestResults.PNG) <br />
[Link](/Results/ttestResults.PNG) <br />

## Study Design: MechaCar vs Competition
To compare the MechaCar against its competition, we would need to look at several metrics, including cost, fuel efficieny (city and highway), horsepower, maintenance, safety ratings, and perhaps performance (measured in quarter mile time or qsec). We would need data for not only the MechaCar but also its competitors. Most consumers will make decisions based primarily on cost, so we will need to compare cars in the same price range. FOr each car in the MechaCra's price range, we would take several readings of fuel efficiency and horsepower and average them together, as well as look at the average maintenace costs of each car over the first several years.<br />
To perform a statistical analysis on the data, we would find means for each metric and perform t-tests to determine if any differences in values are statistically significant.  The null hypothesis would be "there is no difference in the true mean between the MechaCar and its competitors".  If a p-value of greater than 0.05 is found, we may reject this hypothesis and claim (with 95% confidence) that the MechaCar has a statistically significant difference in that particular metric.  For example, if the MechaCar ast a particular price point has a highway mpg of 30 while the competitors have a highway mpg of 32, if a t-test of the MechaCar data and the overall data shows a p-value of greater than 0.05, we can say with 95% confidence thatr the MechaCar's mpg value is statustically different than that of the competitors.
