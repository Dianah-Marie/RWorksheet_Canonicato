#Worksheet-2 in R

#1. Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output. Describe its output.

operatorVector <- seq (-5,5)
operatorVector

#The Output display Numbers from (-5,5) : -5 -4 -3 -2 -1  0  1  2  3  4  5

#b. x <- 1:7. What will be the value of x?
x <- 1:7
x

#The Value of x is : 1 2 3 4 5 6 7

#2.* Create a vector using seq() function

#a. seq(1, 3, by=0.2) # specify step size
#Write the R script and its output. Describe the output.

seqVector <- seq(1,3, by=0.2)
seqVector

# output: 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
# The output is a sequence of numbers from 1 to 3, with an increment of 0.2 between each number. This sequence is stored in the variable SeqVector.

#3 * A factory has a census of its workers. There are 50 workers in total.
#a. Access 3rd element, what is the value?
#The Value is 22.

ageVector <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
               22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
               24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
               18)

ageElement_1 <- ageVector [3]
ageElement_1

#b. Access 2nd and 4th element, what are the values?
#The Values are : 28 and 36.

ageElement_2 <- ageVector [c(2,4)]
ageElement_2

#c. Access all but the 4th and 12th element is not included. Write the R script and its output.
#Output: 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 42 53 41 51 35 24 33 41

ageElement_3 <- ageVector[c(-4,-12)]
ageElement_3 

#4. *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).

x <- c("first"=3, "second"=0, "third"=9)
x

#a. Print the results. Then access x[c("first", "third")].
#Describe the output.

namesX <- x[c("first","third")]
namesX

#The output prints the value of first and third.

# b. Write the code and its output.
namesX <- x[c("first","third")]
namesX
#The Output: first third 
#             3     9 

#5. *Create a sequence x from -3:2.

x <- seq(-3,2)
x

#a. Modify 2nd element and change it to 0;
#x[2] <- 0
#x

x <- -3:2
x[2]<-0
x

#The second element of the vector x (which is -2)  changes it to 0. 
#The Output : -3  0 -1  0  1  2



#6. a) Create a data frame for month, price per liter (php) and purchase-quantity (liter). Write the R scripts and its output.
months <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

fuel_data <- data.frame(Month = months, Price_per_liter_PHP = price_per_liter, Purchase_quantity_liters = purchase_quantity)
fuel_data

#The Output : 
#Month Price_per_liter_PHP Purchase_quantity_liters
#1   Jan               52.50                       25
#2   Feb               57.25                       30
#3 March               60.00                       40
#4   Apr               65.00                       50
#5   May               74.25                       10
#6  June               54.00                       45

  
  
  #b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use ‘weighted.mean(liter,purchase)‘. Write the R scripts and its output.
  
  liters <- fuel_data$Purchase_quantity_liters
purchase <- fuel_data$Price_per_liter_PHP
average_expenditure <- weighted.mean(purchase, liters)
cat("The average fuel expenditure from Jan to June is:", round(average_expenditure, 2), "PHP\n")

#The Output : The average fuel expenditure from Jan to June is: 59.26 PHP

#7. R has actually lots of built-in datasets. For example, the rivers data “gives the lengths(in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.

#a
data(rivers)
data <- c(length(rivers),sum(rivers),mean(rivers),median(rivers),var(rivers),sd(rivers),min(rivers),max(rivers))
data 

#b. What are the results?
#The Results : 141.0000  83357.0000    591.1844    425.0000   243908.4086    493.8708    135.0000   3710.0000


# c. Write the R scripts and its outputs.
data(rivers)
data <- c(length(rivers),sum(rivers),mean(rivers),median(rivers),var(rivers),sd(rivers),min(rivers),max(rivers))
data

#The Results : 141.0000  83357.0000    591.1844    425.0000   243908.4086    493.8708    135.0000   3710.0000



#8The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.
#a. Create vectors according to the above table.

powerRanking <- c(1,2,3,4,5,6,7,8,9,10,
                  11,12,13,14,15,16,17,18,19,20,
                  21,22,23,24,25)

celebrityNames <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey",
                    
                    "U2", "Tiger Woods", "Steven Spielberg",
                    "Howard Stern", "50 Cent", "Cast of the Sopranos",
                    "Dan Brown", "Bruce Springsteen", "Donald Trump",
                    "Muhammad Ali", "Paul McCartney", "George Lucas",
                    "Elton John", "David Letterman", "Phil Mickelson",
                    "J.K Rowling", "Bradd Pitt", "Peter Jackson",
                    "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")

celebrityPay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55,
                  44, 55, 40, 244, 34, 40, 47, 75, 25, 39, 35, 32, 40, 31)


celebrityData <- data.frame(
  power_ranking = powerRanking,
  celebrity_name = celebrityNames,
  pay = celebrityPay
)

#output:
View(celebrityData)


#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90.

celebrityData$power_ranking[celebrityData$celebrity_name == "J.K Rowling"] <- 15
celebrityData$pay[celebrityData$celebrity_name == "J.K Rowling"] <- 90
celebrityData

#c. Create an excel file from the table above and save it as csv file(PowerRanking). Import the csv file into the RStudio.

write.csv(celebrityData, "/cloud/project/PowerRanking.csv")

PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking


#d. Access the rows 10 to 20 and save it as Ranks.R Data.
#Write the R script and its output.

new_rows <- celebrity[10:20,]
save(new_rows, file="Ranks.RData")
View(new_rows)

#The output would depend on the actual content of the `celebrity` data frame. The code will save rows 10 to 20 of the `celebrity` data frame as "Ranks.RData" and will display the content in a viewer window.

#9.c. Create an excel file from the table above and save itas csv file(PowerRanking). Import the csv file intothe RStudio. What is the R script?
#a.a. Import the excel file into your RStudio.


library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)

#b. How many dimensions does the dataset have?

dimhotel_vienna <- dim(hotels_vienna)
dimhotel_vienna

# The output is 428 rows and 24 columns

#c. Select columns country, neighbourhood, price, stars, accomodation_type, andratings. Write the R script

Artemis<-hotels_vienna[c("country","neighbourhood","price","stars","accommodation_type","rating")]
Artemis
View(Artemis)


#d.Save the data as **new.RData to your RStudio. Write the R script.

save(Artemis, file = "new.RData")
View(Artemis)


#e.Display the first six rows and last six rows of thenew.RData. What is the R script?

load("new.RData")
Artemis


#10. Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.

vegetables <-c("Okra", "Cucumbers", "Cauliflower", "Radish", "Tomatoes",
               "Zucchini", "Radish", "Lettuce", "Corn", "Carrots")
vegetables 

#b. Add 2 additional vegetables after the last vegetables in the list.

new_vegetables <- append(vegetables, c("Broccoli", "Cabbage"))
new_vegetables

#c. Add 4 additional vegetables after index 5.

new_vegetables2 <- c("Pechay","Pumpkin","Okra","Saluyot")
all_vegetables <- append(vegetables, new_vegetables2, after = 5)
num_data_points <- length(all_vegetables)
all_vegetables

cat("There are", num_remaining_vegetables, "vegetables remaining.")


#d.Remove the vegetables in index 5, 10, and 15. How many vegetables were left? Write the codes and its output.

indices_to_remove <- c(5,10,15)
vegetables<- vegetables[-indices_to_remove]
num_remaining_vegetables <- length(vegetables)
vegetables
cat("There are", num_remaining_vegetables,"vegetables remaining.")
