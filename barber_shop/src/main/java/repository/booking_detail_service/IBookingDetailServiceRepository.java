package repository.booking_detail_service;

import model.BookingDetailService;
import model.Service;

import java.util.List;

public interface IBookingDetailServiceRepository {
    void addBookingDetail(int bookingId, List<Integer> serviceList);
    void deleteBookingDetail(int idBooking);
}
