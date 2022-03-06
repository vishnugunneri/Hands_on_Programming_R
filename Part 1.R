#Create an object called die ----
die <- 1:6 

#You can see which object names you have already used with the function ls
ls()
die-1
die/2
die*die
die+1:4

#Inner Multiplication and Outer multiplication ----

#Inner Multiplication
die %*% die 

#Outer Multiplication
die %o% die

#Functions ----
round(3.1415)

factorial(3)

mean(1:6)
mean(die)
round(mean(die))

#Sample
sample(x = 1:4, size = 2)

#To roll your die and get a number back
sample(x = die, size = 1)
sample(x = die, size = 1)
sample(x = die, size = 1)

#ignoring the name of the first argument(compare above)
sample(die, size = 1)

#To know the Arguments to a function ----
args(round)
round(3.1415)
round(3.1415, digits = 2)

#Sample without Replacement(the second die never has the same value as the first die)
sample(die, size = 2)

#Sample with Replacement(Sampling with replacement is an easy way to create independent random samples)
sample(die, size = 2, replace = TRUE)

#Function Constructor ----
roll <- function() {
    die <- 1:6
    dice <- sample(die, size = 2, replace = TRUE)
    sum(dice)
}
roll()

#Arguments (What if we removed one line of code from our function and changed the name die to bones, like this?)----
roll2 <- function(bones = 1:6) {
    dice <- sample(bones, size = 2, replace = TRUE)
    sum(dice)
}
roll2()

#Packages&Plots ----
library(ggplot2)
qplot

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x

y <- x^3
y

qplot(x,y)

#Histogram----
x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)

x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)

x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3,binwidth=1)

#Replicate
replicate(3, 1 + 1)
replicate(10, roll())
rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

#Exercise 3.2 (Roll a Pair of Dice)----
roll <- function() {
    die <- 1:6
    dice <- sample(die, size = 2, replace = TRUE,
    prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
    sum(dice)
}
roll()

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)
