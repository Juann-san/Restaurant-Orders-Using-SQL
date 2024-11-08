
# RESTAURANT ORDERS DATASET USING SQL
## Project overview
A quarter's worth of orders from a fictitious restaurant serving international cuisine, including the date and time of each order, the items ordered, and additional details on the type, name and price of the items.


![Restaurant orders sql pic](https://github.com/user-attachments/assets/4932816c-a21b-4491-8dfb-cd092f59b961)

## Tools
Postgre SQL (file has been uploaded for perusal purposes)

## Data Preparation
The data was loaded into postgre sql and a query was opened for analysis

## Business Questions
1. View the menu_items table and write a query to find the number of items on the menu
2. What are the least and most expensive items on the menu?
3. How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
4. How many dishes are in each category? What is the average dish price within each category?
5. View the order_details table. What is the date range of the table?
6. How many orders were made within this date range? How many items were ordered within this date range?
7. Which orders had the most number of items?
8. How many orders had more than 12 items?
9. Combine the menu_items and order_details tables into a single table
10. What were the least and most ordered items? What categories were they in?
11. What were the top 5 orders that spent the most money?
12. View the details of the highest spend order. Which specific items were purchased?



## Findings 

![restaurant sql wors answers pic](https://github.com/user-attachments/assets/0d112921-4bcc-4977-a5f3-070c889abd50)
 
The results of the analysis are in microsoft word format and are displayed like the above. The word file is attached to this upload for review.

1. There are 32 items
2.  The most expensive item is the Shrimp Scampi while the least expensive item is the Edamame
3. There are 9 Italian dishes on the menu withthe most expensive being the Shrimp Scampi and the least being the Fettuccine Alfredo and Spaghetti.
4. There are 4 categories; American with 6 dishes, mexican with 9 dishes, Asian with 8 dishes and Italian with 9 dishes.
5. The order table is shown below
![number 5 ans](https://github.com/user-attachments/assets/095d17aa-f945-4fcc-9bae-30c91a2847ff)
6. There are 5370 orders with 12234 ordered items.
7. Orders with order Id's 4305, 1957, 3473, 2675, 440, 330 and 443 had the most orderd items. They all ordered 14 items.
8. Twenty orders had more than 12 items.
9. The combinedmenu items and order details tables are shown below.
![number 9 ans](https://github.com/user-attachments/assets/1a18f487-e8dd-422a-b8ed-fb02c07faf9d)
10. The most ordered item is the Hamburger from the American categories with the total of 622 orders sold while the least ordered is the Chicken Tacos from the Mexican category with the total of 123 orders sold.
11. The top 5 orders are those with the order ID 440, 2075, 1957,330 and 2675
12. The details of the highest spend order are shown below.
![number 12 sq](https://github.com/user-attachments/assets/dd4c9b75-9922-4fcd-9722-9b73a25fd8b1)


