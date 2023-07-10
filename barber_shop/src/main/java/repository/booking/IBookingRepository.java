package repository.booking;

import model.dto_model.BookingDTO;

import java.util.List;

public interface IBookingRepository {
    List<BookingDTO> displayBooking();
    List<BookingDTO> displayBookingEmp();
}
