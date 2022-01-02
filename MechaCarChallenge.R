# Deliverable 1
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

# Deliverable 2
# Import Suspension_Coil file
susCoil_table <- read.csv(file='Suspension_Coil.csv',header=TRUE,check.names=F,stringsAsFactors = F)
#,Summarize the coil's PSI column
library(tidyverse)
total_summary<-susCoil_table %>% 
  summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),SD=sd(PSI))
# Summarize by lot
lot_summary<-susCoil_table %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),SD=sd(PSI))

# Deliverable 3
# t-tests across all lots
popMean=1500
psiData<-susCoil_table$PSI
t.test(psiData,mu=popMean)
allpvalue<-t.test(psiData,mu=popMean)$p.value

# t-tests for each lot
lot1psiData=subset(susCoil_table,Manufacturing_Lot=='Lot1')$PSI
lot1pvalue<-t.test(lot1psiData,mu=popMean)$p.value
lot2psiData=subset(susCoil_table,Manufacturing_Lot=='Lot2')$PSI
lot2pvalue<-t.test(lot2psiData,mu=popMean)$p.value
lot3psiData=subset(susCoil_table,Manufacturing_Lot=='Lot3')$PSI
lot3pvalue<-t.test(lot3psiData,mu=popMean)$p.value
# Create Dataframe for Results
Manufacturing_Lot<-c("Lot1","Lot2","Lot3","All")
P_Value<-round(c(lot1pvalue,lot2pvalue,lot3pvalue,allpvalue),digits=3)
tTestResults<-data.frame(Manufacturing_Lot,P_Value)
tTestResults
