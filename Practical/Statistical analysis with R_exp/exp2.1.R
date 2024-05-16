dataset<-data.frame(
  Height=c(65.78331, 71.51521, 69.39874, 68.2166, 67.78781, 68.69784, 69.80204, 70.01472, 67.90265, 66.78236, 66.48769, 67.62333, 68.30248, 67.11656, 68.27967, 71.0916, 66.461, 68.64927, 71.23033, 67.13118, 67.83379, 68.87881, 63.48115, 68.42187, 67.62804, 67.20864, 70.84235, 67.49434, 66.53401, 65.44098, 69.5233, 65.8132, 67.8163, 70.59505, 71.80484, 69.20613, 66.80368, 67.65893, 67.80701, 64.04535, 68.57463, 65.18357, 69.65814, 67.96731, 65.98088, 68.67249, 66.88088, 67.69868, 69.82117, 69.08817),
  Weight=c(112.9925, 136.4873, 153.0269, 142.3354, 144.2971, 123.3024, 141.4947, 136.4623, 112.3723, 120.6672, 127.4516, 114.143, 125.6107, 122.4618, 116.0866, 139.9975, 129.5023, 142.9733, 137.9025, 124.0449, 141.2807, 143.5392, 97.90191, 129.5027, 141.8501, 129.7244, 142.4235, 131.5502, 108.3324, 113.8922, 103.3016, 120.7536, 125.7886, 136.2225, 140.1015, 128.7487, 141.7994, 121.2319, 131.3478, 106.7115, 124.3598, 124.8591, 139.6711, 137.3696, 106.4499, 128.7639, 145.6837, 116.819, 143.6215, 134.9325))
dataset

#linear Regression
plot(dataset$Height,dataset$Weight)
dataset.regression<-lm(Weight ~ Height,data=dataset )
summary(dataset.regression)
abline(dataset.regression,col="red")

#Multiple Regression
model_residuals = dataset.regression$residuals
hist(model_residuals)
qqnorm(model_residuals)
qqline(model_residuals)

#Polynomial Regression
model<-lm(Weight ~ poly(Height,4),data<-dataset)
summary(model)
plot(dataset$Height,dataset$Weight)
lines(sort(dataset$Height),fitted(model)[order(data$Height)],col="red",type="l")