use littlelemondb;

insert into customers (customerID, CustomerName, ContactNo)
VALUES
(1, "Hanamichi Sakuragi", "09273648283"),
(2, "Ryota Miyagi", "0927384723"),
(3, "Haruko Akagi", "0847234232"),
(4, "Kaede Rukawa", "09374923242"),
(5, "Uzomaki Naruto", "084628742")
;
insert into menuitem (MenuItemID, Starters, Courses, Drinks, Desserts)
VALUES
(1, "Chicken Skin", "Adobo", "Pineapple Juice", "Leche Flan"),
(2, "Sushi", "Ramen", "Royal", "Cake"),
(3, "Fries", "Burger", "Coca Cola", "Ice Cream"),
(4, "Pizza", "Spaghetti", "Wine", "Chocolate")
;

insert into menu (MenuID, Cuisines, MenuItemID)
VALUES
(1, "Filipino", 1),
(2, "Japanese", 2),
(3, "American", 3),
(4, "Italian", 4)
;

insert into staff (StaffID, Role, Salary)
VALUES
(1, "Crew", "$1000"),
(3, "Manager", "$2000"),
(3, "Chef", "$2500")
;

insert into orders (OrderId, OrderDate, Quantity, TotalCost, CustomerID, MenuId)
VALUES
(1, "1-24-2023", 2, 525.00, 1, 1),
(2, "1-24-2023", 1, 200.00, 2, 2),
(3, "1-24-2023", 1, 240.00, 3, 3),
(4, "1-24-2023", 2, 525.00, 4, 4),
(5, "1-24-2023", 2, 525.00, 2, 2)
;

insert into bookings (BookingID, BookingDate, TableNo, StaffID, CustomerID)
VALUES
(1, "1-25-2023", 1, 1, 1),
(2, "1-25-2023", 2, 2, 2),
(3, "1-25-2023", 3, 3, 3)
;

insert into delivery (DeliveryID, DeliveryDate, Status, OrderID)
VALUES
(1, "1-26-2023", "Preparing", 1),
(2, "1-26-2023", "Delivered", 2),
(3, "1-26-2023", "Preparing", 3),
(4, "1-26-2023", "OTW", 4),
(5, "1-26-2023", "Preparing", 5)
;