CREATE DEFINER=`admin`@`localhost` PROCEDURE `CheckBooking`(booking_date DATE, table_num INT)
BEGIN
SELECT IF(BookingDate = booking_date AND TableNo = table_num, CONCAT("Table ", table_num, " is already booked"), CONCAT("Table ", table_num, " is available") ) as Status 
from bookings 
where BookingDate = booking_date AND TableNo = table_num; 
END