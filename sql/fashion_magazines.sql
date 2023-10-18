-- Add your sql here
SELECT customer_name as 'Customer', PRINTF('$%.2f', SUM(price_per_month * subscription_length)) 
AS 'Amount Due'
FROM orders o 
JOIN customers c
ON o.customer_id = 
c.customer_id
JOIN subscriptions s
ON o.subscription_id =
s.subscription_id
WHERE o.order_status = 'unpaid'
AND s.description = 'Fashion Magazine'
GROUP BY customer_name;

