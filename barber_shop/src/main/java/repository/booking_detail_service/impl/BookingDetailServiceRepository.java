package repository.booking_detail_service.impl;

import base_connection.BaseConnection;
import model.BookingDetailService;
import model.Service;
import repository.booking_detail_service.IBookingDetailServiceRepository;

import java.sql.*;
import java.util.List;

public class BookingDetailServiceRepository implements IBookingDetailServiceRepository {
    private final String ADD_BOOKING_DETAIL = "insert into booking_detail_service(service_id, booking_id) values (?,?)";
    private final String DELETE_BOOKING_DETAIL = "delete from booking_detail_service where booking_id=?;";
    @Override
    public void addBookingDetail(int bookingId, List<Integer> serviceList) {
        Connection connection = BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_BOOKING_DETAIL);
            for (Integer s: serviceList) {
                preparedStatement.setInt(1,s);
                preparedStatement.setInt(2,bookingId);
                preparedStatement.execute();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void deleteBookingDetail(int idBooking) {
        Connection connection = BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BOOKING_DETAIL);
            preparedStatement.setInt(1,idBooking);
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
