# MechaCar_Statistical_Analysis
Using R to review production data for insights that may help a manufacturing team

## 

## Linear Regression to Predict MPG
The results of using a linear regression model on the MechaCar_mpg data is shown below:<br />
![](/Results/LinRegSummary.PNG) <br />
From the column labeled as Pr(>|t|), we can see that vehicle length and ground clearance are unlikely to provide a random amounts of variance to the linear model. This implies that these variables have a significant impact on the miles per gallon. However, since the intercept itself is statistically significant (Pr(>|t|) = 5e-08), some of the variables may need scaling or transfroming to help the model become more predictive.<br />
A plot of fit residual (measured mpg - predicted mpg) as a function of car mpg is shown below. It is plain to see that the linear model is predicting too high for cars with lower mpg and too low for cars with higher mpg. Indeed, the correlation coefficient between measured mpg and predicted mpg is 0.54, indicating a moderate positive correlation. 
