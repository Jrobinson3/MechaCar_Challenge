# Deliverable 1: Linear Regression to Predict MPG

# Use the library() function to load the dplyr package
library(dplyr)
# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar <- read.csv(file="../Resources/MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)
MechaCar
# Perform linear regression using the lm() function. In the lm() function, pass in all six variables and 
# add the dataframe you created in Step 4 as the data parameter.
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar))


# Deliverable 2: Create Visualizations for the Trip Analysis

# Import and read in the Suspension_Coli.csv file as a data table
SuspenCoil_table <- read.csv(file="../Resources/Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function 
# to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Total_summary <- SuspenCoil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 
Total_summary

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column.
lot_summary <- SuspenCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
lot_summary

# Deliverable 3: T-Tests on Suspension Coils

# write an RScript using the t.test() function to determine 
# if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(SuspenCoil_table$PSI,mu=1500)

# write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and 
# its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
coilLot1 <-  subset(SuspenCoil_table, Manufacturing_Lot == "Lot1")
coilLot2 <-  subset(SuspenCoil_table, Manufacturing_Lot == "Lot2")
coilLot3 <-  subset(SuspenCoil_table, Manufacturing_Lot == "Lot3")

t.test(coilLot1$PSI,mu=1500)
t.test(coilLot2$PSI,mu=1500)
t.test(coilLot3$PSI,mu=1500)

