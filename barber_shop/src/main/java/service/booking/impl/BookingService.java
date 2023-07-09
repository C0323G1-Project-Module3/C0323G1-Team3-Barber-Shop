package service.booking.impl;

import model.dto_model.BookingDTO;
import repository.booking.IBookingRepository;
import repository.booking.impl.BookingRepository;
import service.booking.IBookingService;

import java.util.List;

public class BookingService implements IBookingService {
    private final IBookingRepository bookingRepository = new BookingRepository();
    @Override
    public List<BookingDTO> displayBooking() {
        return bookingRepository.displayBooking();
    }

    @Override
    public List<BookingDTO> displayBookingEmp() {
        return bookingRepository.displayBookingEmp();
    }
}
