# Load in the dplyr package
library(dplyr)

# Import and read MechaCar_mpg
mechaCar_table <- read.csv(file='MechaCar_mpg.csv',header=TRUE,check.names=F,stringsAsFactors = F)

# Linear Regression on the MechaCar_mpg data
model=lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
           ground_clearance + AWD, data = mechaCar_table)
# Determine p-vale and r-squared
summary(model)

# Plot of residuals
percentResiduals<-data.frame(mechaCar_table$mpg,resid(model))
names(percentResiduals)[1]<-"mpg"
names(percentResiduals)[2]<-"residual"

plt<-ggplot(percentResiduals,aes(x=mpg,y=residual))
plt+geom_point()+labs(x="MPG",y="Linear Fit Residual")
cor(percentResiduals$mpg,percentResiduals$residual)
