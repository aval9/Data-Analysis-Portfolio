-- What's the total number of orders?
SELECT COUNT(*) AS total_orders 
FROM orders;
-- almost 100.000 (99.441 precisely)

-- What's the number of unique customers?
SELECT COUNT(DISTINCT customer_unique_id) AS unique_customers
FROM customers;
-- I see 96096 unique customers. 

-- What's the total revenue?
SELECT ROUND(SUM(price), 2) AS total_revenue
FROM order_items;
-- Total is more than 13 millions R$.

-- How is the revenue distributed by payment type?
SELECT payment_type, ROUND(SUM(payment_value), 2) AS total_payed
FROM order_payments
GROUP BY payment_type
ORDER BY total_payed DESC;
-- I'm a bit confused by the fact that, looking at the numbers, I see the sum of the revenue per payment type is more than the total_tevenue amount that I found in the previous query.
-- Then I notice payment values also include shipping costs (freight_value), while the total_revenue doesn't (so, all goood).
-- Credit card is by far the most used payment method with more than 12 millions R$ transferred, followed by boleto (less than 3 millions R$), voucher and debit card (a few houndreds thousands each).

-- What are the 5 product categories that sell the most?
SELECT p.product_category_name, COUNT(*) AS total_products
FROM order_items i 
JOIN products p
ON i.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_products DESC
LIMIT 5;
-- The most sold product categories are: bed_bath_table, health_beauty, sports_leisure, furniture_decor and computers_accessories.

-- Who are the frequent customers? (more than 5 orders)
SELECT c.customer_unique_id, COUNT(o.order_id) AS order_count
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
HAVING order_count > 5
ORDER BY order_count DESC;
-- How many are they?
SELECT COUNT(*) AS customers_with_more_than_5_orders FROM (SELECT c.customer_unique_id
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(o.order_id) > 5) AS more_than_5;
-- There are 11 customers who placed more than 5 orders.
-- How many customers have more than one order?
SELECT COUNT(*) AS customers_with_multiple_orders FROM (SELECT c.customer_unique_id
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(o.order_id) > 1) AS more_than_1;
-- 2997 customers placed more than order.

-- Which cities start with 'S'?
SELECT DISTINCT customer_city FROM customers
WHERE customer_city LIKE 'S%';
-- How many are they?
SELECT COUNT(*) AS S_cities FROM (SELECT DISTINCT customer_city
FROM customers
WHERE customer_city LIKE 'S%') AS S_cities_list;
-- 551 cities in the database start with S.

-- How many orders are there per year?
SELECT YEAR(order_purchase_timestamp) AS year, COUNT(*) AS orders
FROM orders
GROUP BY year
ORDER BY year;
-- We see a continuous increase of orders: 329 in 2016, 45101 in 2017 and 54011 in 2018.

-- Which are the orders with the highest amount of products?
SELECT order_id, COUNT(DISTINCT product_id) AS product_count
FROM order_items
GROUP BY order_id
ORDER BY product_count DESC
LIMIT 50;
-- I see one order with 8 products, 3 with 7, 10 with 6 and so on, less products more orders.
-- What's the average amount of products per order?
SELECT ROUND(AVG(product_count), 2) AS avg_products_per_order
FROM (SELECT order_id, COUNT(product_id) AS product_count
FROM order_items
GROUP BY order_id) AS order_summary;
-- 1.14 is the average amount of products per order.

-- What are the most expensive orders? (price of the product + shipping costs)
SELECT order_id, ROUND(SUM(price + freight_value), 2) AS total_order_value
FROM order_items
GROUP BY order_id
ORDER BY total_order_value DESC
LIMIT 10;
-- The most expensive order goes over 13 thousands R$. After that, from around 7 thousands and less.

-- What are the average delivery times?
SELECT ROUND(AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)), 2) AS avg_delivery_days
FROM orders
WHERE order_status = 'delivered';
-- The average delivery time is 12 days and a half.

-- Which seller has more orders?
SELECT seller_id, COUNT(DISTINCT order_id) AS total_orders
FROM order_items
GROUP BY seller_id
ORDER BY total_orders DESC
LIMIT 10;
-- The seller with more orders has 1854 orders.







