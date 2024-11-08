select * from menu_items
select * from order_details

/*number of items on the table*/
select count(menu_item_id) as "number of items"
from menu_items;

/*what is the most expensive items on the table*/
select item_name, price 
from menu_items
order by price desc
limit 1;

/*what is the least expensive items on the table*/
select item_name, price 
from menu_items
order by price asc
limit 1;

/*how many italian dishes are on the menu*/
select count(menu_item_id) as "amount of italian dishes", category
from menu_items
where category = 'Italian'
group by category;


/*what is the most expensive italian dish*/
select item_name, category, price
from menu_items
where category = 'Italian'
order by price desc
limit 1;

/*what is the least expensive italian dish on the table*/
select item_name, category, price
from menu_items
where category = 'Italian'
order by price asc;

/*how many dishes are in each category and the average price in each category*/
select count(menu_item_id) as "amount of italian dishes", category, avg(price) as "Average Price"
from menu_items
group by category;

/*view the order_details table, what is the date range*/
select min(order_date) as "earliest date", max(order_date) as"latest date"
from order_details;

/*HOW MANY ORDERS WERE MADE WITHIN THIS DATE RANGE*/
select count(distinct order_id) as "amount of ordered items"
from order_details;

/*how many items were ordered within this date range*/
select count(order_id) as "amount of ordered items"
from order_details;

/*which order had the most item*/
select order_id, count(item_id) as "number of items ordered"
from order_details
group by order_id
order by count(item_id) desc;

/*how many orders had more than 12 items*/
select order_id, count(item_id) as "number of items ordered"
from order_details
group by order_id
having count(item_id)>12
order by count(item_id) desc;

/*combine both tables*/
select * from menu_items
inner join order_details on menu_item_id = item_id

/*what were the least and most ordered items and what category were they in*/
/*most ordered item*/
select item_name, category, count(item_id)
from menu_items
join order_details on menu_item_id = item_id
group by item_name, category
order by count(item_id) desc
limit 1;

/*least ordered items*/
select item_name, category, count(item_id)
from menu_items
join order_details on menu_item_id = item_id
group by item_name, category
order by count(item_id) asc
limit 1;

/*top 5 orders that spent the most money*/
select order_id, count(item_id) as "number of orders", sum(price) as "total amount"
from menu_items
join order_details on menu_item_id = item_id
group by order_id
order by sum(price) desc
limit 5;

/*view the details of the hisghest spend order. which specific items were bought*/
select *
from menu_items
join order_details on menu_item_id = item_id
where order_id = 440


/* view the details of the top five highest spend orders*/

select *
from menu_items
join order_details on menu_item_id = item_id
where order_id IN (440,2075,1957,330,2675);


