SELECT * 
FROM CUSTOMER;




SELECT product_name, category 
FROM Product 
WHERE price between 5000 AND 10000;




SELECT * 
FROM Product 
ORDER BY Price DESC;




SELECT COUNT(*), AVG(Total_amount), MAX(Total_amount), MIN(Total_amount), Product_id
FROM Orders
GROUP BY Product_id;




SELECT Customer_id
FROM Orders
GROUP BY Customer_id
HAVING COUNT(Product_id) > 2;




SELECT COUNT(Customer_id)
FROM Orders
WHERE EXTRACT(YEAR FROM ORDERDATE) = 2020;




SELECT Product_name, Customer_name, Orderdate
FROM Orders
INNER JOIN Customer ON Orders.Customer_id = Customer.Customer_id
INNER JOIN Product ON Orders.Product_id = Product.Product_id;




SELECT *
FROM Orders
WHERE EXTRACT(MONTH FROM ORDERDATE) >= EXTRACT(MONTH FROM SYSDATE) - 3;



SELECT Customer_id
FROM Customer
WHERE Customer_id NOT IN (SELECT Customer_id FROM Orders);