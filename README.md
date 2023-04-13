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
(i) The suspension coil’s Pounds per square inch (PSI) continuous variable across all manufacturing lots.
(ii) The following PSI metrics for each lot: mean, median, variance, and standard deviation.

Addressing the following:
(iii) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### (i) The suspension coil’s PSI continuous variable across all manufacturing lots.

### Total Summary 
![image](https://user-images.githubusercontent.com/114967995/231612686-80ae8fac-571c-411c-83e1-1be8d1197900.png)

The mean PSI overall for all manufacturing Lots is 1.498.78 (+/- SD = 7.89), with a median of 1500 and variance of 62.29.

### (ii) The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Lot Summary
![image](https://user-images.githubusercontent.com/114967995/231615478-db7da3aa-2609-4a44-b69e-0820c35c9a66.png)

Lot 1 had a mean of 1500.00 (+/- SD 0.99) and a median of 1500.0 with a variance of 0.98.
Lot 2 had a mean of 1500.02 (+/- SD 2.73), a median of 1500.0 and a variance of  7.47.
Lot 3 had a mean of 1496.14 (+/- SD 13.05), with a median 1498.5 and a variance of 170.29.




### (iii) Looking at the variance of the PSI column in the total_summary dataframe and the lot_summary dataframe.

According to the question, the design specification for the MechaCar suspension coils is that the variance of the suspension coils must not exceed 100 pounds per square inch. If the variance of the PSI column exceeds 100 pounds per square inch, it means that the current manufacturing data does not meet the design specification.

From the total_summary dataframe, we can see the variance of the PSI column is 76.23 pounds per square inch, which is less than 100 pounds per square inch. Therefore, the current manufacturing data meets the design specification for all manufacturing lots in total.

However, when we look at the lot_summary dataframe, we can see that the variance of the PSI column for Lot 3 is 170.29 pounds per square inch, which exceeds the design specification of 100 pounds per square inch. Therefore, the current manufacturing data does not meet the design specification for Lot 3 individually.

In summary, the current manufacturing data meets the design specification for all manufacturing lots in total, but does not meet the design specification for Lot 3 individually, as its variance of the PSI column exceeds 100 pounds per square inch.

 ## 3. T-Tests on Suspension Coils
 

#### To perform t-tests to determine if all manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch.
![image](https://user-images.githubusercontent.com/114967995/231632227-103c4490-ca50-4365-a50f-7ad14023862e.png)

p>0.05
Hence we fail to reject the Ho
There is a statistical difference between the observed sample mean performance of all Manufacturing Lots and the presumed population mean (other competitors).
All the suspension coils from all Manufacturing Lots have the mean PSI to be statistically different from the population mean PSI.

#### To determine if the PSI for each manufacturing Lot 1 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629002-a1d97d11-38ec-4144-abf7-09099f2e5073.png)

p>0.05
Hence we fail to reject the Ho1
There is a statistical difference between the observed sample mean performance of Manufacturing Lot 1 and the presumed population mean (other competitors).
All the suspension coils from Manufacturing Lot 1 have the mean PSI to be statistically different from the population mean PSI.

#### To determine if the PSI for each manufacturing Lot 2 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629235-a7a31332-8cbc-4df5-a07d-168fb7664662.png)

p>0.05
Hence we fail to reject the Ho2
There is a statistical difference between the observed sample mean performance of Manufacturing Lot 2 and the presumed population mean (other competitors).
All the suspension coils from Manufacturing Lot 2 have the mean PSI to be statistically different from the population mean PSI.

#### To determine if the PSI for each manufacturing Lot 3 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629472-c947a944-e32e-4c4d-9c78-aef443735acd.png)

p<0.05
Hence we reject the Ho3
There is no statistical difference between the observed sample mean performance of Manufacturing Lot 3 and the presumed population mean (other competitors).
All the suspension coils from Manufacturing Lot 3 have the mean PSI to not be statistically different from the population mean PSI.


## 4. Study Design: MechaCar vs Competition

### Study Design

#### Aim of the study:
The aim of the study was to determine how the various suspension coils designed by MechaCar measure against the mean standards of the population and the competition.
#### Research Question: 
#### Ho: There is no statistical difference between the observed sample mean performance of all Manufacturing Lots and the presumed population mean (other competitors).
#### Ha: There is a statistical difference between the observed sample mean performance of all Manufacturing Lots and the presumed population mean (other competitors).

#### Ho1: There is no statistical difference between the observed sample mean performance  of Manufacturing Lot 1 and that of  other competitors.
#### Ha1: There is a statistical difference between the observed sample mean performance of Manufacturing Lot 1 and that of other competitors.
#### Ho2: There is no statistical difference between the observed sample mean performance of Manufacturing Lot 2 and that of other competitors.
#### Ha2: There is a statistical difference between the observed sample mean performance of Manufacturing Lot 2 and that of other competitors.
#### Ho3: There is no statistical difference between the observed sample mean performance of Manufacturing Lot 3 and that of other competitors.
#### Ha3: There is a statistical difference between the observed sample mean performance of Manufacturing Lot 3 and that of other competitors.

#### Method
The MechaCar company decided to gather data from consumers who use their products and compare the data obtained against data from competitors. Suspension coils from three different manufacturing Lots of the MechaCar company were compared as follows Lot 1, Lot 2 and Lot 3. Data from 150 cars having suspension coils produced from Lots 1, 2 and 3 were obtained prepared to be analyzed using the R-statistical tool. The suspension coils performance was measured in pounds per inch (PSI) and this value was compared across all three groups. Descriptive summary statistics were conducted on the data and the means, standard deviations and variance of the suspension coils from the three manufacturing Lots as well as acrossboard were determined. 

In general, a t-test compares the mean of a sample to a known or hypothesized value, such as a population mean. The resulting output of the t-test provides a p-value, which represents the probability of obtaining a test statistic as extreme or more extreme than the one observed, assuming the null hypothesis is true. The null hypothesis in this case is that the mean PSI for the manufacturing lot is equal to 1,500 pounds per square inch.If the p-value is less than the significance level (usually 0.05), we reject the null hypothesis and conclude that there is evidence to suggest that the sample mean is statistically different from the population mean. The t-test was also used to compare if there would be a statistical difference between the observed sample mean suspension coil PSI and the presumed population mean PSI for each Manufacturing Lot as well as all Lots. The results are shown below in the results section:

#### Results

### Total Summary 
![image](https://user-images.githubusercontent.com/114967995/231612686-80ae8fac-571c-411c-83e1-1be8d1197900.png)

The mean PSI overall for all manufacturing Lots is 1.498.78 (+/- SD = 7.89), with a median of 1500 and variance of 62.29.

### (ii) The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Lot Summary
![image](https://user-images.githubusercontent.com/114967995/231615478-db7da3aa-2609-4a44-b69e-0820c35c9a66.png)

Lot 1 had a mean of 1500.00 (+/- SD 0.99) and a median of 1500.0 with a variance of 0.98.
Lot 2 had a mean of 1500.02 (+/- SD 2.73), a median of 1500.0 and a variance of  7.47.
Lot 3 had a mean of 1496.14 (+/- SD 13.05), with a median 1498.5 and a variance of 170.29.


#### To perform t-tests to determine if all manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch.
![image](https://user-images.githubusercontent.com/114967995/231632227-103c4490-ca50-4365-a50f-7ad14023862e.png)

p>0.05
Hence we fail to reject the Ho
There is no statistical difference between the observed sample mean performance of all Manufacturing Lots and the presumed population mean (other competitors).
All the suspension coils from all Manufacturing Lots have the mean PSI not statistically different from the population mean PSI.

#### To determine if the PSI for each manufacturing Lot 1 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629002-a1d97d11-38ec-4144-abf7-09099f2e5073.png)

p>0.05
Hence we fail to reject the Ho1
There is no statistical difference between the observed sample mean performance of Manufacturing Lot 1 and the presumed population mean (other competitors).
All the suspension coils from Manufacturing Lot 1 have the mean PSI not statistically different from the population mean PSI.

#### To determine if the PSI for each manufacturing Lot 2 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629235-a7a31332-8cbc-4df5-a07d-168fb7664662.png)

p>0.05
Hence we fail to reject the Ho2
There is no statistical difference between the observed sample mean performance of Manufacturing Lot 2 and the presumed population mean (other competitors).
All the suspension coils from Manufacturing Lot 2 have the mean PSI not statistically different from the population mean PSI.

#### To determine if the PSI for each manufacturing Lot 3 is statistically different from the population mean of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/114967995/231629472-c947a944-e32e-4c4d-9c78-aef443735acd.png)

p<0.05
Hence we reject the Ho3
There is a statistical difference between the observed sample mean performance of Manufacturing Lot 3 and the presumed population mean (other competitors).
All the suspension coils from Manufacturing Lot 3 have the mean PSI statistically different from the population mean PSI.

#### Conclusion

In conclusion, Suspension coils from Manufacturing Lot 3 have mean PSI statistically different fom their competitors. However, suspension coils produced from the MechaCar Manufacturing Lots 1 and 2 have the mean PSI not statistically different from that of their competitors/population. This could mean that suspension coils produced from Manufacturing Lots 1 and 2 are within expected standards as the variance for these two is also very low whereas the variance for those from Lot 3 is over 170. 
Suspension coils produced form manufacturing Lot 3 would possibly have to be looked into to make improvements in the design and performance in order to keep up with competitors and general population standards.
