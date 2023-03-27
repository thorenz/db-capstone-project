CREATE DEFINER=`admin`@`localhost` PROCEDURE `GetOrderDetail`(customer_id INT)
BEGIN
SELECT OrderID, Quantity, TotalCost from orders where CustomerId = @customer_id;
END