CREATE DEFINER=`admin`@`localhost` PROCEDURE `CancelBooking`(booking_id INT)
BEGIN
DECLARE id INT;
SELECT BookingID INTO id from bookings where BookingID = booking_id;
IF id = booking_id THEN
	DELETE FROM bookings WHERE BookingID = booking_id;
    SELECT CONCAT("Booking ", booking_id, " cancelled") as Confirmation;
else
	SELECT CONCAT("Booking ", booking_id, " is not in the bookings") as Confirmation;
end if;
END