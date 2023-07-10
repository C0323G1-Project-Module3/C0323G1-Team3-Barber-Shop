package service.booking;

import model.Booking;
import model.dto_model.BookingDTO;

import java.util.List;

public interface IBookingService {
    List<BookingDTO> displayBooking();
    List<BookingDTO> displayBookingEmp();
    void addBooking(Booking booking);
}
