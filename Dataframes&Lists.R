# Data Frames and List
#Homogeneous data type in a column
countries_data <- data.frame(country=c("portugal","France","UK"),
                             population= c(123000,456000,789000),
                             "EU"= c("Y","Y","N"))
#List- Can hold multiple data types
multi_object <- list("A",1,TRUE)
multi_object[[1]] #use double [[]] to call object or $

#Data frame- manipulations:
countries_data <- data.frame(country=c("portugal","France","UK"),
                             population= c(123000,456000,789000),
                             "EU"= c(TRUE,TRUE,FALSE),
                             stringsAsFactors = FALSE #add this line to change factor to char data type
                             )
str(countries_data) #for data types of a DF
countries_data <- data.frame(row.names =c("portugal","France","UK"), #change the column to row names
                             population= c(123000,456000,789000),
                             "EU"= c(TRUE,TRUE,FALSE),
                             stringsAsFactors = FALSE #add this line to change factor to char data type
)

#Indexing
countries_data[1,]
countries_data[c("France","UK"),]
#to change an element
countries_data[1,1] <- 1 
#To add a column
spain_data <- data.frame(country = c("Spain"),
                         population= c(159000),
                         "EU"= c(TRUE)
                         )
countries_data = rbind(countries_data,spain_data)
capitals <- c("Lisbon", 'Paris','London','Madrid')
countries_data <- cbind(countries_data,capitals)


#To remove a column
countries_data[,'EU'] <- NULL

#Exercise:
# Create a new data frame with 3 columns (name, minutes and type)
# called sports with the following data:
# name should have the rows Football, Hockey, Rugby
# minutes should have the rows: 90, 70 and 80
# type: outdoor, indoor, outdoor

# Store it in an object named sports

sports <- data.frame(name=c('Football','Hockey','Rugby'),
                     minutes= c(90,70,80),
                     type= c('outdoor','indoor','outdoor'))


# Create a new data frame with a new sport called Volleyball with 60 minutes 
# and type NA 

# Store it in a variable called volley
volley <- data.frame(name=c('Volleyball'),
                     minutes=c(60),
                     type= NA)

# Add volley to the sports table store the object in a table called 
# sports_2

# Hint: The order matters! You should add volley 
# to the sports table so volley should be added at the end
# of the table

sports_2 = rbind(sports,volley)

# Store the name of the sports in a variable 
# called name_sports

name_sports <- sports_2[,'name']

# Add row names to sports_2 with the name of
# the sports
row.names(sports_2) =c('Football','Hockey','Rugby','Volleyball')


# Remove the name column from sports_2 table
sports_2[,'name'] <- NULL

# Change the type of the volleyball game 
# to "indoor"

# rewrite the sports_2 object
sports_2['Volleyball','type'] <- 'indoor'

# create a new vector with the following data: 
# 'FIFA', 'IHF', 'IRL', 'FIVB'
# name the vector federation 
federation = c('FIFA', 'IHF', 'IRL', 'FIVB')

# Add the federation to our sports_2 
# object - explicitly let R know that you 
# want the federation to be a character
# rewrite the sports two object 

sports_2 = cbind(sports_2,federation)

# Check the mean of the minutes of the four sports 
# store the value in a mean_minutes variable

mean_minutes <- mean(sports_2[,"minutes"])

#Lists
multi_object <- list (
  "Vector"= c(1,2,3),
  "Array"= array(1:3, dim=c(2,2)),
  "Logical"= TRUE
)

names(multi_object) <- c('VECTRO','ARAY','Logic')

#To call a data point in the 
multi_object[1]#to select list level
multi_object[[1]][2]#to select underlying list level
multi_object[[2]][2,2]
multi_object[c(1,2)] #to call list level values
multi_object['Vector']
multi_object$Vector #$ sign works ony for named indexes
multi_object$Vector[2]

example_list <- list(c('a','b','c'),array(1:10, dim= c(2,5)))
#Add item in the list
example_list[[3]]<- c(1,2,3)
#Remove item, [[]] and [] works same
example_list[3] <- NULL

#Exercises

# Create a list with 3 elements: 
# - a character with the element "John"
# - a vector with the values 100, 250, 300, 25
# - a matrix with the values (1,1,0,0) with 
# two rows and two cols

# store the returning object in an object 
# called customer

customer = list(c('John'),c(100, 250, 300, 25),matrix(c(1,1,0,0),nrow=2, ncol=2))

# Add a fourth element to our list customer 
# the value 2015

customer[4] <- c(2015)

# Add names to our list elements 
# The names of our elements should be: 
# "Name", "Balance", "Products", "Opening Date"

names(customer) <- c("Name", "Balance", "Products", "Opening Date")

# Change the customer last Balance value to 10
# Change the customer object itself

customer[[2]][4] <- 10

# Store the products matrix in an object called
# products 

products <- customer$Products

# Create a new customer (a list) with two 
# elements - a character with "Anne"
# and a vector with c(400, 232, 294, 593)

# name the object new_customer and give names
# to the list elements with name "Name_2" and "Balance_2"

new_customer = list(c("Anne"),c(400, 232, 294, 593))

# Join the two lists in a new list called 
# final_list 

final_list = c(customer,new_customer)




