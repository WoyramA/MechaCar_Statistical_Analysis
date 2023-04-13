
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

[Workspace loaded from C:/Users/Woyram/Desktop/Columbia DA BC 2022/Week 16-Statistics_R/R_Analysis/01_Demo/.RData]

> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> mpg_data <- read.csv("MechaCar_mpg.csv")
> lm_fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)
> To calculate the p-value and r-squared value for the linear regression model, we can use the summary() function on the lm() object that we created earlier. Here's the code:
Error: unexpected symbol in "To calculate"
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

> source("C:/Users/Woyram/Desktop/Columbia DA BC 2022/Week 16-Statistics_R/R_Analysis/01_Demo/MechaChallenge.RScript.R")
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

> source("C:/Users/Woyram/Desktop/Columbia DA BC 2022/Week 16-Statistics_R/R_Analysis/01_Demo/MechaChallenge.RScript.R")
> source("C:/Users/Woyram/Desktop/Columbia DA BC 2022/Week 16-Statistics_R/Weekly challenge 16/MechaCar_Statistical_Analysis/MechaChallenge.RScript.R")
> View(MechaCar_mpg)
> source("C:/Users/Woyram/Desktop/Columbia DA BC 2022/Week 16-Statistics_R/Weekly challenge 16/MechaCar_Statistical_Analysis/MechaChallenge.RScript.R")
> View(MechaCar_mpg)
> suspension_data <- read.csv("Suspension_Coil.csv")
> total_summary <- suspension_data %>% 
+     summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI))
> View(total_summary)
> View(suspension_data)
> View(total_summary)
> lot_summary <- manufacturing_data %>%
+     group_by(lot) %>%
+     summarize(mean_psi = mean(suspension_coil_psi),
+               median_psi = median(suspension_coil_psi),
+               variance_psi = var(suspension_coil_psi),
+               sd_psi = sd(suspension_coil_psi))
Error in group_by(., lot) : object 'manufacturing_data' not found
> lot_summary <- suspension_data %>%
+     group_by(lot) %>%
+     summarize(mean_psi = mean(suspension_coil_psi),
+               median_psi = median(suspension_coil_psi),
+               variance_psi = var(suspension_coil_psi),
+               sd_psi = sd(suspension_coil_psi))
Error in `group_by()`:
! Must group by variables found in `.data`.
✖ Column `lot` is not found.
Run `rlang::last_trace()` to see where the error occurred.
> lot_summary <- suspension_coil %>%
+     group_by(Manufacturing_Lot) %>%
+     summarize(mean_psi = mean(PSI),
+               median_psi = median(PSI),
+               variance_psi = var(PSI),
+               sd_psi = sd(PSI))
Error in group_by(., Manufacturing_Lot) : 
  object 'suspension_coil' not found
> lot_summary <- suspension_data %>%
+     group_by(Manufacturing_Lot) %>%
+     summarize(mean_psi = mean(PSI),
+               median_psi = median(PSI),
+               variance_psi = var(PSI),
+               sd_psi = sd(PSI))
> View(lot_summary)