# MechaCar_Statistical_Analysis

## 1. Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset containing mpg test results for 50 prototype MechaCars was analyzed using a linear model. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R, a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file is shown below to answer the questions below.

![image](https://user-images.githubusercontent.com/114967995/231612365-31338d73-4f36-48f2-b2bf-703c167b553b.png)


### (i) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Based on the p-values, the variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset are "vehicle_length," "ground_clearance," and the intercept (p-values < 0.001).

### (ii) Is the slope of the linear model considered to be zero? Why or why not?
No, the slope of the linear model is not considered to be zero because the p-value for the overall model is significant (p-value = 5.35e-11), indicating that at least one of the variables in the model is useful in predicting the mpg values.

### (iii) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The linear model has an adjusted R-squared value of 0.6825, which indicates that approximately 68% of the variability in the response variable (mpg) can be explained by the predictor variables in the model. This suggests that the model may be moderately effective in predicting the mpg of MechaCar prototypes. However, it's important to note that there may be other variables not included in the model that could also affect the mpg values. Additionally, further validation and testing may be required to determine the true effectiveness of the model.


## 2. Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. The dataset comprises the weight capacities of multiple suspension coils  tested to determine if the manufacturing process is consistent across production lots. Using knowledge of R, a summary statistics is done and the table is showing the following below:
(i) The suspension coil’s PSI continuous variable across all manufacturing lots.
(ii) The following PSI metrics for each lot: mean, median, variance, and standard deviation.

Addressing the following:
(iii) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### (i) The suspension coil’s PSI continuous variable across all manufacturing lots.

### Total Summary 
![image](https://user-images.githubusercontent.com/114967995/231612686-80ae8fac-571c-411c-83e1-1be8d1197900.png)



### (ii) The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Lot Summary
![image](https://user-images.githubusercontent.com/114967995/231615478-db7da3aa-2609-4a44-b69e-0820c35c9a66.png)


### (iii) Looking at the variance of the PSI column in the total_summary dataframe and the lot_summary dataframe.

According to the question, the design specification for the MechaCar suspension coils is that the variance of the suspension coils must not exceed 100 pounds per square inch. If the variance of the PSI column exceeds 100 pounds per square inch, it means that the current manufacturing data does not meet the design specification.

From the total_summary dataframe, we can see the variance of the PSI column is 76.23 pounds per square inch, which is less than 100 pounds per square inch. Therefore, the current manufacturing data meets the design specification for all manufacturing lots in total.

However, when we look at the lot_summary dataframe, we can see that the variance of the PSI column for Lot 3 is 170.29 pounds per square inch, which exceeds the design specification of 100 pounds per square inch. Therefore, the current manufacturing data does not meet the design specification for Lot 3 individually.

In summary, the current manufacturing data meets the design specification for all manufacturing lots in total, but does not meet the design specification for Lot 3 individually, as its variance of the PSI column exceeds 100 pounds per square inch.

 ## 3. T-Tests on Suspension Coils
 Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

### Study Design

#### Aim of the study:

#### Research Question:
#### Ho: There is no statistical difference between the observed sample mean of all Manufacturing Lots and its presumed population mean (other competitors).
#### Ha: There is a statistical difference between the observed sample mean of all Manufacturing Lots and its presumed population mean (other competitors).
#### Ho1: There is no statistical difference between the observed sample mean of Manufacturing Lot 1 and that of  other competitors.
#### Ha1: There is a statistical difference between the observed sample mean of Manufacturing Lot 1 and that of other competitors.
#### Ho2: There is no statistical difference between the observed sample mean of Manufacturing Lot 2 and that of other competitors.
#### Ha2: There is a statistical difference between the observed sample mean of Manufacturing Lot 2 and that of other competitors.
#### Ho3: There is no statistical difference between the observed sample mean of Manufacturing Lot 3 and that of other competitors.
#### Ha3: There is a statistical difference between the observed sample mean of Manufacturing Lot 3 and that of other competitors.
#### Method

#### Results

#### To perform t-tests to determine if all manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch.
![image](https://user-images.githubusercontent.com/114967995/231632227-103c4490-ca50-4365-a50f-7ad14023862e.png)


#### To determine if the PSI for each manufacturing Lot 1 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629002-a1d97d11-38ec-4144-abf7-09099f2e5073.png)


#### To determine if the PSI for each manufacturing Lot 2 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629235-a7a31332-8cbc-4df5-a07d-168fb7664662.png)


#### To determine if the PSI for each manufacturing Lot 3 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629472-c947a944-e32e-4c4d-9c78-aef443735acd.png)


#### Conclusion

In your description, address the following questions:

What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?


## 4. Study Design: MechaCar vs Competition



