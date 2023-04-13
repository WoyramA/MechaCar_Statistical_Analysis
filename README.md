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


### (iii) (iii) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?




