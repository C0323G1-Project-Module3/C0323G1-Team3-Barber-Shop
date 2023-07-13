package service.booking_detail_service.impl;

import model.Service;
import repository.booking_detail_service.IBookingDetailServiceRepository;
import repository.booking_detail_service.impl.BookingDetailServiceRepository;
import service.booking_detail_service.IBookingDetailServiceService;

import java.util.List;

public class BookingDetailServiceService implements IBookingDetailServiceService {
    private final IBookingDetailServiceRepository bookingDetailServiceRepository = new BookingDetailServiceRepository();
    @Override
    public void addBookingDetail(int bookingId, List<Integer> serviceList) {
        bookingDetailServiceRepository.addBookingDetail(bookingId,serviceList);
    }

    @Override
    public void deleteBookingDetail(int bookingId) {
        bookingDetailServiceRepository.deleteBookingDetail(bookingId);
    }
}
