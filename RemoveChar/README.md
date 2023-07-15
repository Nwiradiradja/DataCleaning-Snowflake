# Removing Unwanted Characters
* Using CONCAT() to visualize spaces
* Using TRIM() to remove the unwanted characters

## Explanation
* First we want to create a new worksheet and setup the context as seen on image 1.
* Let's take a glance at the table and column to see if we can identify some issues regarding characters for the names. We will do this by running a select statement followed by from as seen on image 2, we can see some extra spaces and numbers in the names.
* Even though we're able able to see the numbers and spaces in the beginning of the name, we're not exaclty able to see the spaces after the name. To detect this we will use the CONCAT() function with a '>' before the name and a '<' after the name. As you can see on image 3, we see Curtis, Anthony
