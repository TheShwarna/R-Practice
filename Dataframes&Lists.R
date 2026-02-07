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


