# MechaCar_Statistical_Analysis
Using R to review production data for insights that may help a manufacturing team

## Tools Used
[RStudio](https://www.rstudio.com/)<br />
[MechaCar_mpg](/Data_Files/MechaCar_mpg.csv)<br />
[Suspension_Coil](/Data_Files/Suspension_Coil.csv)

## Linear Regression to Predict MPG
The results of using a linear regression model on the MechaCar_mpg data is shown below:<br />
![](/Results/LinRegSummary.PNG) <br />
[Link](/Results/LinRegSummary.PNG)<br />

From the column labeled as Pr(>|t|), we can see that vehicle length and ground clearance are unlikely to provide a random amounts of variance to the linear model. This implies that these variables have a significant impact on the miles per gallon. However, since the intercept itself is statistically significant (Pr(>|t|) = 5e-08), some of the variables may need scaling or transfroming to help the model become more predictive.<br />
A plot of fit residual (measured mpg - predicted mpg) as a function of car mpg is shown below. It is plain to see that the linear model is predicting too high for cars with lower mpg and too low for cars with higher mpg. Indeed, the correlation coefficient between measured mpg and predicted mpg is 0.54, indicating a moderate positive correlation. Since there is a correlation bewteen mpg and the fit residuals, the linear model does not adequetly descibe the data.
![](/Results/LinRegFitResiduals.PNG) <br />
[Link](/Results/LinRegFitResiduals.PNG) <br />

## Summary Statistics on Suspension Coils
The total summary statistics for the PSI in the suspension coils is given below, as well as the summary statistics grouoed by manufacturing lot.<br />
![](/Results/TotalSummary.PNG) <br />
[Link](/Results/TotalSummary.PNG) <br />
![](/Results/LotSummaryStats.PNG) <br />
[Link](/Results/LotSummaryStats.PNG) <br />
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  While the variance for the suspension coils as whole does not exceed this limit, the coils in Lot 3 have a variance well above it (170 PSI) as shown in the bottom table. Furthermore, the total summary statistics in the top figure are skewed by the high variance of Lot 3, as the breakdown by lot shows that Lot 1 and Lot both have very small variances. For these reasons, significant changes in Lot 3 need to be made to produce coils within the prescribed variance limit.
