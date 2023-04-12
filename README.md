# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/114967995/231609490-5e347fe2-8109-4dd4-93ab-ff8d392bfb56.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Based on the p-values, the variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset are "vehicle_length," "ground_clearance," and the intercept (p-values < 0.001).

### Is the slope of the linear model considered to be zero? Why or why not?
No, the slope of the linear model is not considered to be zero because the p-value for the overall model is significant (p-value = 5.35e-11), indicating that at least one of the variables in the model is useful in predicting the mpg values.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The linear model has an adjusted R-squared value of 0.6825, which indicates that approximately 68% of the variability in the response variable (mpg) can be explained by the predictor variables in the model. This suggests that the model may be moderately effective in predicting the mpg of MechaCar prototypes. However, it's important to note that there may be other variables not included in the model that could also affect the mpg values. Additionally, further validation and testing may be required to determine the true effectiveness of the model.
