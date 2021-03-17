auto = ISLR::Auto

auto.lin.fit = lm(mpg ~ horsepower, data = auto)
summary(auto.lin.fit)

Res_Errors <- 4.906

mean_mpg <- mean(mpg)

(Res_Errors / mean_mpg) * 100

predict(auto.lin.fit, data.frame(horsepower = 98), interval = "confidence")

predict(auto.lin.fit, data.frame(horsepower = 98), interval = "prediction")

hp = auto$horsepower
mpg = auto$mpg

plot(hp, mpg, xlab = "Horsepower", ylab = "Miles per gallon")
abline(auto.lin.fit, lwd = 3, col = "red")

par(mfrow = c(2, 2))
plot(auto.lin.fit)
