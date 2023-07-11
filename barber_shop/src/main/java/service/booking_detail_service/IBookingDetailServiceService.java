package service.booking_detail_service;

import model.Service;

import java.util.List;

public interface IBookingDetailServiceService {
    void addBookingDetail(int bookingId, List<Integer> serviceList);
    void deleteBookingDetail(int bookingId);

}
