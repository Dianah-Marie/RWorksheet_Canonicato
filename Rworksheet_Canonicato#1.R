#1. vector
ageVector <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
              35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
              51, 35, 24, 33, 41)

#a. How many data points?

length(ageVector)

#2. Find the reciprocal of the values for age.
reciprocal_ageVector <-1/ageVector
reciprocal_ageVector

#3. Assign also new_age <- c(age, 0, age).
new_ageVector <- c(ageVector, 0, ageVector)
new_ageVector

#4. Sort the values for age.
sort_ageVector <- sort(ageVector)
sort_ageVector

#5. Find the minimum and maximum value for age.
min_ageVector <- min(ageVector)
min_ageVector

max_ageVector <- max (ageVector)
max_ageVector

#6. Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,2.5, 2.3, 2.4, and 2.7.
 
dataVector <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4,2.7)
dataVector

#7. Generates a new vector for data where you double every value of the data. | What happento the data?
 double_dataVector <- 2 * dataVector
 double_dataVector
 
#8. Generate a sequence for the following scenario:
#8.1 Integers from 1 to 100
 int_1to100 <- seq(1, 100)
 int_1to100 
 
#8.2 Numbers from 20 to 60
 int_20to60 <- seq(20, 60)
 int_20to60
 
#8.3 Mean of numbers from 20 to 60
 int_20to60 <- mean(seq(20, 60))
 int_20to60    
 
#Sum of numbers from 51 to 91
 int_51to91 <- sum(seq (51,91))
 int_51to91
 
#*8.5 Integers from 1 to 1,000
int_1to1000 <- seq(1, 1000)
int_1to1000 

#a. How many data points from 8.1 to 8.4?
intVector  <- length (seq (1,100)) + lenght (seq (20,60)) +   lenght (mean (seq (20,60)) + lenght (sum (seq (51,91))
intVector                                                                                                                                                                                            