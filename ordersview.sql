use littlelemondb;
select c.CustomerID, c.CustomerName, o.OrderID, o.TotalCost, m.Cuisines, mi.Courses
from customers as c INNER JOIN orders as o ON c.CustomerID = o.CustomerID
INNER JOIN menu as m ON o.MenuID = m.MenuID
INNER JOIN menuitem as mi ON m.MenuItemID = mi.MenuItemID
where o.TotalCost > 150;
