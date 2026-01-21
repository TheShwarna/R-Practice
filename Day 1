#Calculator
sqrt(85)
15/(10**2)
(215+log(100))/exp(100)
log(24)
# help funtion >> ?log()

#Vectors
melon <- c(1.2,4.5,6.7,8.9)
rm(melon)
# Index position
melon[1]
melon[3:4]
melon[c(1,4)]

sum(melon)
melon[3]+melon[1]

adjusted_weight <- c(1.2,1.3,1.1,1.4)
melon*adjusted_weight
extra_melon <- c(1.2,4.5,6.7,8.9,1)
extra_melon*adjusted_weight

#Calculations with vectors
mean(melon)
length(melon)
median(melon)
sd(melon)
sort(melon)
sort(melon,decreasing=TRUE)

new_melon = c(1.2,4.5,6.7,8.9,1, NA)
sum(new_melon, na.rm=TRUE)

# Help Commands
?sum()
help(sum)

new_melon = c(1.2,4.5,6.7,8.9,1, NaN)
sum(new_melon, na.rm=TRUE)

#Comparison
melon>5
melon[melon>5]
melon == 6.7
melon != 6.7
which(melon<5)

#Naming positions
population <- c(123,567,908)
names(population)
names(population) <- c("UK", "US","KSA")
population['UK']
# population['UK','US'] >> Does not work as multiple dimension
population[c('UK','US')]
which(population>400)
names(which(population>400))
names(population)

#Editing existing vectors
melon[3:4] <- c(7.6, 9.8)
melon[5]
melon[5] <- c(10)
melon<5
melon[melon<5]
which(melon<5)
# wrong>> which(melon<5) <- 5
# works>> melon[which(melon<5)] <- 5
# correct>> melon[melon<5] <- 5
rm(melon)

melon<- c(1.2,4.5,6.7,8.9)
melon[melon<2] <- 2

#remove elements>> Just add - before c
new_melon <- melon[-c(3:4)]
extra_lemon <- extra_melon[-c(which(extra_melon>5))]

#Exercise 1

# This is our example vector (don't change this)
students_age <- c(10, 12, 14, 15, 9, 10, 10, NA)

# Store the sum of students age in a variable
# called total_ages (watch out for nas!)
total_ages = sum(students_age,na.rm=TRUE)
  
  # Store the mean of students age in a variable
  # called mean_age (watch out for nas!)
  mean_age = mean(students_age,na.rm = TRUE)

# Store the values of the ages of the 
# first, third and sixth students in a variable
# called students
students  = students_age[c(1,3,6)]

# Assign the names "John, Steven, Colin, Ruth, Anne, 
# Susan, Bill, Charles" to the names property of 
# students_age
names(students_age)  = c("John", "Steven", "Colin", "Ruth", "Anne", "Susan", "Bill", "Charles")

# Store the names of the students older than thirteen 
# years old in a variable called over_thirteen
over_thirteen  = names(students_age[-c(students_age<13)])
over_thirteen = over_thirteen[1:2]

# Change Steven's age to 13 
students_age["Steven"]  = 13

# Charles and Colin are not from this class, remove them 
# from the vector and assign the new vector without them 
# to a variable called class_1 
# Remember that to use the "-c" bit we need to use 
# indexes and not names
class_1  = students_age[-c(3,8)]

# Create a new vector called log_sqrt_students
# where you first apply a square root to students_age
# and then a logarithm 
sqrt_students  = sqrt(students_age)
log_sqrt_students  = log(sqrt_students)

#Exercise 2
#Create a vector called kids_ages with the following elements:  
kids_ages = c(12, 11, 12, 13, 14, 13, 12, 10, 12, 12, 14, 13)

#Calculate the mean of the kids_ages vector.
mean(kids_ages)

#Calculate the median of the kids_ages vector.
median(kids_ages)

#Create a new logical (TRUE/FALSE) vector called subset_ages that stores with TRUE the kids that are less than 11 years old or more than 13 years old.
subset_ages = kids_ages<11 | kids_ages>13

#Give the following names to the kids_ages vector: 
names(kids_ages) <- c("John", "Rachel", "Joe", "Anne", "Theresa", "Samuel", "Marcus", "Andrew", "Kate", "Jane", "Martha", "David")

#Subset the ages of "Rachel" and "Anne"
subset = kids_ages[c("Rachel","Anne")]

#Change the age of the fifth student to 13
kids_ages[5] <- 13

#Return a vector named under_12 with the names of the students under 12 years old.
under_12 = names(kids_ages<12)

#Create a new vector called product_pricing with the following elements: 
product_pricing=c(5.6, 11.2, 4.5, 0.25, 1, 23)

#Create a new vector based on product_pricing called half_price with half the original price.
half_price = product_pricing/2

#Create a new vector based on product_pricing called promotion with promotions applied to the first product(20%), third product(40%) and fifth product(50%)
promotion = product_pricing*c(0.8,0.6,0.5)

#Create a new vector based on product_pricing called squared_prices  with the prices squared.
squared_prices=sqrt(product_pricing)

#Subset the first three products of the product_pricing vector.
subset= product_pricing[1:3]

#Select the maximum price on the product_pricing vector and store it in the maximum_price object.
maximum_price=max(product_pricing)

#Return the number of products in your vector and store it in a object called num_products.
num_products= length(product_pricing)
  
#Add 5 to the product's value and divide them by the original product_price. Store the result in an object called transform_price.
transform_price=(product_pricing+5)/product_pricing

