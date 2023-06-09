
R version 4.2.3 (2023-03-15 ucrt) -- "Shortstop Beagle"
Copyright (C) 2023 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from C:/Users/Woyram/

> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> mpg_data <- read.csv("MechaCar_mpg.csv")

> lm_model <- lm(mpg ~ ., data = MechaCar_mpg)
> summary(lm_model)

Call:
lm(formula = mpg ~ ., data = MechaCar_mpg)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> library(dplyr)
> mpg_data <- read.csv("MechaCar_mpg.csv")
> lm_model <- lm(mpg ~ ., data = MechaCar_mpg)
> summary(lm_model)

Call:
lm(formula = mpg ~ ., data = MechaCar_mpg)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> suspension_data <- read.csv("Suspension_Coil.csv")
> total_summary <- suspension_data %>% 
+     summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI))
> View(total_summary)
> View(suspension_data)
> View(total_summary)

> lot_summary <- suspension_data %>%
+     group_by(Manufacturing_Lot) %>%
+     summarize(mean_psi = mean(PSI),
+               median_psi = median(PSI),
+               variance_psi = var(PSI),
+               sd_psi = sd(PSI))
> View(lot_summary)


> t.test(suspension_data$PSI, mu=1500)

One Sample t-test

data:  suspension_data$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1497.507 1500.053
sample estimates:
  mean of x 
1498.78 

> t.test(subset(suspension_data, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

One Sample t-test

data:  subset(suspension_data, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1499.719 1500.281
sample estimates:
  mean of x 
1500 

> 
  > t.test(subset(suspension_data, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

One Sample t-test

data:  subset(suspension_data, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1499.423 1500.977
sample estimates:
  mean of x 
1500.2 

> 
  > t.test(subset(suspension_data, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

One Sample t-test

data:  subset(suspension_data, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1492.431 1499.849
sample estimates:
  mean of x 
1496.14 