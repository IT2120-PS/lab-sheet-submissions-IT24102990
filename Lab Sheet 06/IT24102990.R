setwd("C:\\Users\\Nandun Senaratne\\OneDrive\\Desktop\\IT24102230- LAB06")


# Question 1
# i. The distribution of X is Binomial with n=50 and p=0.85
# X ~ Binomial(50, 0.85)

# ii. Probability that at least 47 students passed the test
n <- 50
p <- 0.85
prob_at_least_47 <- 1 - pbinom(46, size=n, prob=p)
print(paste("Probability at least 47 students passed:", prob_at_least_47))

# Question 2
# i. The random variable X is the number of customer calls received in an hour

# ii. The distribution of X is Poisson with lambda=12
# X ~ Poisson(12)

# iii. Probability that exactly 15 calls are received in an hour
lambda <- 12
prob_exactly_15 <- dpois(15, lambda=lambda)
print(paste("Probability exactly 15 calls:", prob_exactly_15))