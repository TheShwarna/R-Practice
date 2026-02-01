#Factors
continents <- c('Asia', 'oz', 'europe', 'antartica', 'africa','N.Amer','S.Amer','europe','oz')
factor_continent= factor(continents)
factor(continents)
class(factor_continent)
class(continents)
typeof(factor_continent)
as.integer(factor_continent)
nlevels(factor_continent)

altitute_level= c('high','low','medium','low','high','low')
factor(altitute_level)
factor(altitute_level, order=TRUE, levels=c("low","medium","high"))


#Dates
dates= as.Date(c('2026-01-23','2025-01-24'))
class(dates)
as.numeric(dates)
as.Date(c('23/01/2026')) #does not give proper output
as.Date(c('23/01/2026'),format='%d/%m/%Y') #Uppercase Y for picking 4 digit years
as.Date(c('23Jan2026'),format='%d%b%Y')
format(dates,"%d")
months= c(format(dates,'%B'))
years=format(dates,'%Y')

#Coding exercise
# This is our example vector (don't change this)
years <- c(2008,2009,2010,2011,2012,2013, "YEAR")

# Extract the underlying data type of the vector years and store it in a variable called type_years
type_years = typeof(years)

# Extract the class data type of the vector years and store it in a variable called class_type_years
class_type_years = class(years)

# Test if the vector years is of a numeric class type and store the result in a variable is_numeric
is_numeric  = is.numeric(years)

# Convert the years vector to numeric and store it in a variable called numeric_years Remove the last element before conversion
numeric_years  = as.numeric(years[1:6])

# Convert the years vector to a factor and store it in a variable called factor_years
factor_years  = factor(years)

# Convert the years vector to a factor and make it ordinal in ascending order remove the NA with indexers 
ordinal_years  = factor(sort((years[1:6]),decreasing=FALSE))

# Extract the number of levels of ordinal_years store it in a variable named number_levels
number_levels  = nlevels(ordinal_years)

# Create a date vector (with class type as date) with the 1st, 2nd and 3rd of March of 2019 store those values in a variable called first_three_days_march 
first_three_days_march = as.Date(c('2019-03-01','2019-03-02','2019-03-03'))

# Extract the day of the first_three_days_march and store it in a vector called days
days = format(first_three_days_march,'%d')

#Hard exercise
#Create a vector called boolean_vec, length=8, with TRUE on the first 5 positions and FALSE on the last 3.
boolean_vec= c(TRUE,TRUE,TRUE,TRUE,TRUE, FALSE, FALSE, FALSE)
  
#Convert your boolean_vec to 1's and 0's and store it in an object called numeric_vec.
numeric_vec= as.numeric(boolean_vec)

#Test if your numeric_vec is a numeric using the R testing function.
class(numeric_vec)

#Convert your numeric_vec to character and store it in an object called char_vec.
char_vec= as.character(numeric_vec)

#Assign the fifth element on numeric_vec to the character "5".
numeric_vec[5]= "5"

#Call class on the numeric_vec .
class(numeric_vec)

#Check if the class of numeric_vec is equal to the class of char_vec.
class(numeric_vec)==class(char_vec)
