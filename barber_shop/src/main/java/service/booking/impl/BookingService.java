package service.booking.impl;

import model.Booking;
import model.dto_model.BookingDTO;
import repository.booking.IBookingRepository;
import repository.booking.impl.BookingRepository;
import service.booking.IBookingService;

import javax.servlet.http.HttpSession;
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

    @Override
    public int addBooking(Booking booking) {
        return bookingRepository.addBooking(booking);
    }

    @Override
    public List<BookingDTO> displayHistoryBooking(int accountId) {
        return bookingRepository.displayHistoryBooking(accountId);
    }

    @Override
    public void deleteBooking(int bookingId) {
        bookingRepository.deleteBooking(bookingId);
    }


}
