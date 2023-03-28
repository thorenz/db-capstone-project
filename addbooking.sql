CREATE DEFINER=`admin`@`localhost` PROCEDURE `AddValidBooking`(IN booking_id INT, IN booking_date DATE, IN table_num INT, IN staff_id INT, IN customer_id INT)
BEGIN
DECLARE id INT;
DECLARE book_date Date;
DECLARE table_number INT;

SELECT BookingID, BookingDate, TableNo 
INTO id, book_date, table_number
from bookings
where BookingDate = booking_date AND TableNo = table_num;

IF id = booking_id THEN
	SELECT CONCAT("Booking ID ", booking_id, " is already in the database") as Confirmation; 
else
	IF book_date = booking_date AND table_number = table_num THEN
		SELECT CONCAT("Booking Date and Table already occupied") as Confirmation;
	else
		INSERT INTO bookings (BookingID, BookingDate, TableNo, StaffID, CustomerID)
		VALUES(booking_id, booking_date, table_num, staff_id, customer_id);
		SELECT CONCAT("New booking id ", booking_id, " added") as Confirmation;
	end if;
end if;
end