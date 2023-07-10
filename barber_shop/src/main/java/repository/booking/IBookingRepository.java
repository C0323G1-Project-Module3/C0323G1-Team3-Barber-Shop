package repository.booking;

import model.Booking;
import model.dto_model.BookingDTO;

import java.util.List;

public interface IBookingRepository {
    List<BookingDTO> displayBooking();
    List<BookingDTO> displayBookingEmp();
    void addBooking(Booking booking);
}
