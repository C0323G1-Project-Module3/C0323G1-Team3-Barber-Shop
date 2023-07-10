package service.booking;

import model.dto_model.BookingDTO;

import java.util.List;

public interface IBookingService {
    List<BookingDTO> displayBooking();
    List<BookingDTO> displayBookingEmp();
}
