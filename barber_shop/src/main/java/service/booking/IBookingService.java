package service.booking;

import model.Booking;
import model.dto_model.BookingDTO;

import java.util.List;

public interface IBookingService {
    List<BookingDTO> displayBooking();
    List<BookingDTO> displayBookingEmp();
    int addBooking(Booking booking);
    List<BookingDTO> displayHistoryBooking(int accountId);
    void deleteBooking(int bookingId);

}
