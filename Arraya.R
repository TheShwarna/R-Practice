#Arrays
my_vector=1:4
my_array=array(data=my_vector,dim=c(2,2))
#calling a point in the array
my_array[1,] #Calls the 1st row as the y axis is not specified
my_array[1,2] #Calls the specific data point with coordinates 1,2
class(my_array)
my_array=array(data=my_vector,dim=c(2,2,2))
class(my_array)

countries_data = array(c(1:8),dim=c(2,2,2))
countries_data = array(c(123,234,467,678),dim=c(2,2,2))
countries_data = array(c(123,234,367,478,567,687,764,890),dim=c(2,2,2),dimnames = list(c("India","UK"),c(2018,2020),c("Before","After")))
countries_data
countries_data["UK",,]


# Create a 4 dimensional array based on the vector 
# 1:4 and with 3, 4, 5 and 2 elements on each dimension,
# by this order
# save the array on a multidim named object
multidim <- array(c(1:4), dim=c(3,4,5,2))

# Save the vector with the number of dimensions 
# of our array in a dimensions_n object
dimensions_n = dim(multidim)

# Remove the second element of the fourth 
# dimension and store the resulting array in 
# a three_dim named object
three_dim = multidim[,,,-1]

# Remove the third, fourth and fifth elements 
# of the third dimension of the three_dim
# object, write the object in an array 
# named three_dim_2
three_dim_2  = array(data=three_dim,c(3,4,2))

# Apply the logarithm to the last column 
# of the multi dimensional array 
# hint: remember that columns are in the second
# dimensions! 
# modify our three_dim_2 array 
three_dim_2[,4,]=log(three_dim_2[,4,])

# Raise every element of the first row of 
# our three_dim_2 array to the power of 5 
# rewrite the three_dim_2 object
three_dim_2[1,,]=three_dim_2[1,,]**5

# Assign the following dimension names to 
# our three_dim_2 vector: 
# Dimension 1 : 'Player 1','Player 2','Player 3'
# Dimension 2: 'Dexterity','Strength','Intelligence','Speed'
# Dimension 3: "House Stark", "House Lannister"
dimnames(three_dim_2) =list(c('Player 1','Player 2','Player 3'),c('Dexterity','Strength','Intelligence','Speed'),c("House Stark", "House Lannister"))

# Store the Intelligence of Player 3 from House Lannister 
# on a variable called player_3_lan_int
player_3_lan_int  = three_dim_2['Player 3','Intelligence',"House Lannister"]

# Create an array with the values c('A','B','C','D') in 
# a 2 by 2 dimensional format and an
# an array with the values c('E','F','G','H') in 
# a 2 by 2 format
# Store them in a alpha_1 and alpha_2 variables, 
# respectively 
alpha_1 = array(c('A','B','C','D'),dim=c(2,2))
alpha_2 = array(c('E','F','G','H'),dim=c(2,2))

# Combine alpha_1 and alpha_2, row wise and store
# the resulting object in a combined_alpha named
# object
combined_alpha = rbind(alpha_1,alpha_2)


#Create an array with 4 dimensions called fourdim and feed it with the data 1:10. Your array must have 2 elements on each dimension.
fourdim <- array(c(1:10), dim=c(2,2,2,2))

#Set the [2,2,2,2] element on the fourdim array to NA
fourdim[2,2,2,2] <- NA

#Extract the mean of the fourdim array - pay attention to the NA's.
mean(fourdim,na.rm=TRUE)

#Create an array called threed with three dimensions with 3 elements in the first, 2 in the second and 2 in the third. 
#Name your first dimension as "Stock Price", "Revenue", "Employees", the second as "2018","2019" and the third as "Apple","Microsoft". 
#Feed the array with the following data: 
#(155, 261, 132000,423.4, 321, 137000,105, 240, 118000,157.64, 260, 139000)
threed <- array(c(155, 261, 132000,423.4, 321, 137000,105, 240, 118000,157.64, 260, 139000),dim=c(3,2,2),dimnames = list(c("Stock Price", "Revenue", "Employees"),c("2018","2019"),c("Apple","Microsoft")))

#Using array indexes, compute the difference between Apple's stock price in 2019 and 2018. Store it in an object called diff_price.
diff_price= threed[1,2,1]-threed[1,1,1]

#Based on the diff_price object, compute percentage difference (in decimal format, where for instance: 0.5 equals to 50%) between Apple's stock price in 2019 and 2018. 
#Use array indexes again to find the 2018 Apple stock price in the threed array.
per_diff_price= round(diff_price/threed[1,1,1],2)
threed[1,1,1]

#Extract all the information that you have for Apple on threed array. Remember, 'Apple' is on the third dimension. Store it in an object called apple
apple= threed[,,-1]

#Extract every "Stock Price" that we have on our array. Remember, "Stock Price" is on the first dimension. Store it in an object called stock_price
stock_price=threed[1,,]

#Check the dimensions of the stock_price object. Use an R instructor to do it.
dim(stock_price)

#Check if the class of the stock_price object is equal to the class of the threed object.
class(stock_price)==class(threed)

#Convert the stock_price of Microsoft to a vector (you can use the stock_price object) and store it in an object called price_vector.
price_vector= stock_price[,2]
price_vector
