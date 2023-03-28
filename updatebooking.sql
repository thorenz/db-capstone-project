CREATE DEFINER=`admin`@`localhost` PROCEDURE `UpdateBooking`(booking_id INT, booking_date DATE)
BEGIN
DECLARE id INT;
SELECT BookingID INTO id from bookings WHERE BookingID = booking_id;
IF id = booking_id THEN
	UPDATE bookings SET BookingDate = booking_date where BookingID = booking_id;
	SELECT CONCAT("Booking ", booking_id, " has been updated") as Confirmation;
else
	SELECT CONCAT("Booking ", booking_id, " not in database") as Confirmation;
end if;
END