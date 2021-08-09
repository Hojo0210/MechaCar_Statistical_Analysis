# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![Screenshot (25)](https://user-images.githubusercontent.com/81697076/128651034-505f76e3-6c6b-45a7-9662-ea913a35297b.png)

With a statistically significant vehicle length and ground clearance, we can assume that they provide a non-random amount of variance to the mpg values in the dataset. Therefore, they should have a significant impact on mpg. The statistic significance of the intercept could mean that our significant features may need scaling or transforming, or that there may be other variables that are significant but have not been included in our model. The low p-value (< 5%) lets us assume that the slope is not zero. The r-squared 
value of 0.7149 tells us that ~71% of the variablity of our mpg is explained using this model, which is farily effective.

## Summary Statistics on Suspension Coils
![Screenshot (26)](https://user-images.githubusercontent.com/81697076/128651041-b21dc1b4-037e-46da-a094-cc5aaa52a22f.png)

The variance for all 3 lots combined is 62.3 which is within the 100PSI tolerance for production.


![Screenshot (27)](https://user-images.githubusercontent.com/81697076/128651044-57af1f11-01ff-4d4a-b135-19a711974079.png)

However, when we look at each lot individually we can see that lot 3 has a variance of 170.3, which is not within our tolerance. 


## T-Tests on Suspension Coils
![Screenshot (29)](https://user-images.githubusercontent.com/81697076/128651046-003d91ed-6248-4618-86db-abc829ec95dd.png)

With a p-value of 0.06, we are able to assume that our mean is statistically similar to the population mean of 1,500.

![Screenshot (30)](https://user-images.githubusercontent.com/81697076/128651052-943ccb11-6d19-4634-bb66-e12e0d7f1b4d.png)

When looking at each lot individually, lot 1 and 2 have a high enough p-value to consider them statistically similar to the population. However, we see that lot 3 has a p-value of 0.04, which lets us assume that its mean is statistically different from the population mean.


## Study Design: MechaCar vs Competition


