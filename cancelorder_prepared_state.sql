CREATE DEFINER=`admin`@`localhost` PROCEDURE `CancelOrder`(order_id INT)
BEGIN
DELETE FROM orders where OrderID = order_id;
SELECT CONCAT('Order ', order_id, ' has been canceled') as Confirmation;

END