
# Insights:

* meta data for `fraudTest.csv` and `fraudTrain.csv`
```
index - Unique Identifier for each row
trans_date_trans_time - Transaction DateTime
cc_num - Credit Card Number of Customer
merchant - Merchant Name
category - Category of Merchant
amt - Amount of Transaction
first - First Name of Credit Card Holder
last - Last Name of Credit Card Holder
gender - Gender of Credit Card Holder
street - Street Address of Credit Card Holder
city - City of Credit Card Holder
state - State of Credit Card Holder
zip - Zip of Credit Card Holder
lat - Latitude Location of Credit Card Holder
long - Longitude Location of Credit Card Holder
city_pop - Credit Card Holder's City Population
job - Job of Credit Card Holder
dob - Date of Birth of Credit Card Holder
trans_num - Transaction Number
unix_time - UNIX Time of transaction
merch_lat - Latitude Location of Merchant
merch_long - Longitude Location of Merchant
is_fraud - Fraud Flag <--- Target Class
```
## important functions in excel 
* functions in excel are akin to statistical functions in scipy, numpy, pandas etc. operating on arrays, matrices or rows of data usually
* `=<name of function e.g. SUM>(<cell column letter and row number e.g. A1>: <cell column letter and row number e.g. A10>)` or `=<name of function e.g. RANDARRAY>(<num rows>, <num cols>, <min random num to be generated>, <max random num to be generated>, <boolean value indicating whether to generate only integers e.g. TRUE or FALSE>)`
* selecting a cell and then inputting `=RANDARRAY(10, 10, -100, 100, FALSE)` will generate a matrix of 10 x 10 dimensions of random float numbers (since integer arg is set to false) between -100 and 100  
* copying a range of cells (vector or matrices) and then pasting the cell range where you've pasted the values to will be still highlighted from here you can still press ctrl and see what paste options you want to have happen, 
* if you want a vector or matrix of cells to remain unmoved while you scroll horizontally and/or vertically click `view -> freeze panes`
autofill iss useful for repeating sequences of  data with patterns, e.g. Mon then next Tues, next Wed

5, 10, then next 15, 20, 25, 
s
## important shortcuts in excel
* ctrl + n
* to make widths or heights of each column or row the same select the range of columns or rows and right click one of the divider lines of these selected range of columns and row indeces, a dialog will popup indicating what value you want for the width or height then press enter
* to edit cell you can type directly into it or press f2
* ctrl + shift + arrow keys (left right down up) will select all the cells in a range of rows or columns that have values

# Questions:
* how to fill in missing values?
* how to drop undesired values based on a filter?
* what is formatting data? Select a column of numbers then we select the formatting of this column and set it to currency to turn numbers into currency e.g. with decimals etc.