package repository.booking;

import model.Booking;
import model.dto_model.BookingDTO;

import java.util.List;

public interface IBookingRepository {
    List<BookingDTO> displayBooking();
    List<BookingDTO> displayBookingEmp();
    int addBooking(Booking booking);
    List<BookingDTO> displayHistoryBooking(int accountId);
    void addBooking(BookingDTO bookingDTO);

    void deleteBooking(int idBooking);

}
