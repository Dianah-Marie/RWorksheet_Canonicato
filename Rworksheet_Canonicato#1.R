#1. vector
ageVector <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
              35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
              51, 35, 24, 33, 41)
ageVector 


#a. How many data points?

length(ageVector)
#There are 34 data points in the ageVector because there are 34 age values listed within the c(...) function.

#b. Write the R code and its output.
#The output is : ageVector <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)


#2. Find the reciprocal of the values for age.
reciprocal_ageVector <-1/ageVector
reciprocal_ageVector

#Write the R code and its output.
#The output is :[1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077 0.02564103 0.02380952 0.03448276 0.02857143
#[12] 0.03225806 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816 0.02000000 0.02702703
#[23] 0.02173913 0.04000000 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784 0.02857143 0.04166667 0.03030303
#[34] 0.02439024

# Each value in "reciprocal_ageVector" is the reciprocal (1 divided by) the corresponding age value from "ageVector".

#3. Assign also new_age <- c(age, 0, age).
new_ageVector <- c(ageVector, 0, ageVector)
new_ageVector

#What happen to the new_age?
#new_ageVector will be a longer vector than ageVector. It will start with the values of ageVector, followed by 0, and then followed again by the values of ageVector.
#The resulting new_ageVector will have twice as many elements as the original ageVector, and it will have 0 in the middle.

#4. Sort the values for age.
sort_ageVector <- sort(ageVector)
sort_ageVector

#Write the R code and its output.
#The output is:  17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57
#The output shows the sorted age values in ascending order, from the lowest age (17) to the highest age (57). The sort_ageVector is a new vector containing these sorted values, and it can be used for further analysis or display.
#5. Find the minimum and maximum value for age.
min_ageVector <- min(ageVector)
min_ageVector

max_ageVector <- max (ageVector)
max_ageVector

#Write the R code and its output.

#6. Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,2.5, 2.3, 2.4, and 2.7.

dataVector <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4,2.7)
dataVector

#a. How many data points?
# There are 12 data points in the vector.
#b. Write the R code and its output.
#The Output is : 2.4 2.8 2.1 2.5 2.4 2.2 2.5 2.3 2.5 2.3 2.4 2.7

#7. Generates a new vector for data where you double every value of the data.
double_dataVector <- 2 * dataVector
double_dataVector

#What happen to the data?
#original dataVector is doubled in the double_dataVector. The original dataVector remains unchanged.
#every value in dataVector has been multiplied by 2 to create double_dataVector



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

#8.4 Sum of numbers from 51 to 91
int_51to91 <- sum(seq (51,91))
int_51to91

#*8.5 Integers from 1 to 1,000
int_1to1000 <- seq(1, 1000)
int_1to1000 

#a. How many data points from 8.1 to 8.4?
#b. Write the R code and its output from 8.1 to 8.4.
int_Vector  <- length (seq (1,100)) + length (seq (20,60)) +   length (mean (seq (20,60))) + leng (sum (seq (51,91)))
int_Vector 

#c. For 8.5 find only maximum data points until 10.
max_int_1k <-seq(1, 1000)[1:10]
max_int_1k

#9.Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7using filter option.
#filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
#Write the R code and its output.

add_filter <-Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
add_filter 

#10. Generate a sequence backwards of the integers from 1 to 100.
#Write the R code and its output.

rev_1to100 <- rev(seq(100, 1, by = -1))
rev_1to100

#11. List all the natural numbers below 25 that are multiples of 3 or 5.
#Find the sum of these multiples.

multiples <- Filter(function(i) { all(i %%3 == 0| i%%5 == 0) != 0}, seq (24,1)) 
multiples 
added_multiples <- sum(multiples)
added_multiples

#a. How many data points from 10 to 11?
data_points <- length (rev_1to100) + length (multiples) + length (added_multiples)
data_points 

# Output is : 112

#12. Statements can be grouped together using braces ‘{’ and ‘}’. A group of statements is sometimes called a block. Single statements are evaluated when a new line is typed at of the syntactically complete statement. Blocks are not evaluated until a new line is entered after the closing brace.
#Enter this statement: { x <- 0+ x + 5 + } Describe the output.

#Error:
{ x <- 0+ x + 5 + }

#Correct: 
{ x <- 0  
  +x + 5}

#the code contains a syntax error
#R reads it as two consecutive plus signs and a closing bracket 
#without the corresponding opening bracket,
#you can fix it by removing the extra plus sign at the end so i will 
#consider it as a block of code 

#13. *Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75,75 and 77. To access individual elements of an atomic vector, one generally uses the x[i] construction.
#Find x[2] and x[3]. Write the R code and its output.

scoreVector <- c(72, 86, 92, 63, 88, 89, 91, 92, 75,75,77)
scoreVector

score_1 <- scoreVector[2]
score_2 <- scoreVector[3]
score_1
score_2

#14. Create a vector a = c(1,2,NA,4,NA,6,7).
#a. Change the NA to 999 using the codes print(a,na.print="-999").

a = c(1,2,NA,4,NA,6,7)
print(a,na.print="999")

#b. Write the R code and its output. Describe the output.
#The Output is : 1   2 999   4 999   6   7
#the code replaces NA with 999 and prints the vector "a"

#15 A special type of function calls can appear on the left hand side of the assignment operator as in > class(x) <- "foo".

name = readline(prompt = "Input your name: ")

age = readline  (prompt= "input your age: ")

print (paste ("My Name is", name, "and I am",age,"years old."))

print(R.version.string)

#What is the output of the above code?
#The output depends on what the user's input in the name and age object 
#It will input the information of your name and age you provided. 
#Lastly, it will print the R version information from "R.version.string"

