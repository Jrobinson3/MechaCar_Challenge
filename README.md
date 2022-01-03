# MechaCar_Challenge
## Deliverable 1: Linear Regression to Predict MPG
Create a new RScript by going to the File menu. Select "New File," followed by "RScript," or you can click the icon in the top-left corner of the RStudio window. Note that the icon looks like a white square with a plus sign in the top left corner.

3. Use the library() function to load the dplyr package.
4. Import and read in the MechaCar_mpg.csv file as a dataframe.
5. Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
7. Save your MechaCarChallenge.RScript file to your GitHub repository.

Written Summary
In your README, create a subheading, ## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:
![image](https://github.com/Jrobinson3/MechaCar_Challenge/blob/main/Mechacar_summary.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
According to our results, the vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance (a non-random amount) to the linear model. In other words, the vehicle length and ground clearance have a significant impact on fuel efficiency (mpg). 
2. Is the slope of the linear model considered to be zero? Why or why not?
No, the slope of the linear model is not considered to be zero because the P-value is 0.0000000000535 which is much smaller than the significance level of 0.05%.  Therefore, there is sufficient evidence to reject the null hypothesis.
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Yes.  The reason why this linear model predicts mpg of MechaCar prototypes effectively is due to the linear regression model. The r-squared value is 0.71, which means that roughly 71% of the variability of the dependent variable is explained using this linear model. Compared to the Pearson correlation coefficient between mpg and others (vehicle length, vehicle_weight,spoiler angle, ground clearance, AWD), we can confirm that our r-squared value is approximately the square of our r-value.  We have determined that there is a significant relationship between mpg and others. 

## Deliverable 2: Create Visualizations for the Trip Analysis
1. Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Total_summary dataframe should look like this:

![image](https://github.com/Jrobinson3/MechaCar_Challenge/blob/main/total_summary.png)

4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Lot_summary dataframe should look like this:

![image](https://github.com/Jrobinson3/MechaCar_Challenge/blob/main/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
No, the current manufacturing data does not meet this design specification due to the manufacturing lot 3.  In this test, the total summary shows that the variance of the suspension coils is 62.29 which is within the range. However, when we summarized suspension coils PSI by manufacturing lots, the variance of the suspension coils exceeded 100 pounds PSI in manufacturing lot 3.

## Deliverable 3: T-Tests on Suspension Coils
1. In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
2. Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
3. Save your MechaCarChallenge.RScript file to your GitHub repository.

Written Summary
In your README, create a subheading ## T-Tests on Suspension Coils, then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
![image](https://github.com/Jrobinson3/MechaCar_Challenge/blob/main/t_test_PSI_allLots.png)

![image](https://github.com/Jrobinson3/MechaCar_Challenge/blob/main/three_manufacturing%20lots.png)

Assuming our significance level was the common 0.05 percent, our p-value (0.06) from the t-test is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
Additionally, we have to look at each manufacturing lot. This shows that manufacturing lot 1 & 2's p-values are above our significance level (0.05).  Therefore, we do not have sufficient evidence to reject the null hypothesis. Manufacturing lot 3's p-value is 0.04, therefore, we do have sufficient evidence to reject the null hypothesis. 

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition
Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
Follow the instructions below to complete Deliverable 4.
1. In your README, create a subheading ## Study Design: MechaCar vs Competition.
2. Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
3. In your description, address the following questions:
What metric or metrics are you going to test?
We will compare MechaCar's fuel efficiency (mpg)-dependent variable and vehicle weight (independent variable) vs other major car competitor companies' fuel efficiency, such as Honda, Tesla, Hyundai, and Ford for the past 3 years. 
What is the null hypothesis or alternative hypothesis?
"Null Hypothesis: if the vehicle weight does not impact the fuel efficiency, then reducing the vehicle weight in MechaCar will not result in using less gasoline. 
Alternative Hypothesis: if the vehicle weight does impact the fuel efficiency, then reducing the vehicle weight in MechaCar will result in using less gasoline."
What statistical test would you use to test the hypothesis? And why?
We will use simple linear regression because it builds a linear regression model with one independent variable.
What data is needed to run the statistical test?
We need a dataset that includes the vehicle weight and mpg for other competitor companies during the past three years. 









