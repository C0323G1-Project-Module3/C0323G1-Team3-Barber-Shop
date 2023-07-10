package repository.booking.impl;

import base_connection.BaseConnection;
import model.dto_model.BookingDTO;
import repository.booking.IBookingRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BookingRepository implements IBookingRepository {
    private final String SELECT_BOOKING = "call select_booking();";
    private final String SELECT_BOOKING_EMP = "call select_booking_emp();";

    @Override
    public List<BookingDTO> displayBooking() {
        Connection connection = BaseConnection.getConnection();
        List<BookingDTO> bookingDTOList = new ArrayList<>();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_BOOKING);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                String customerName = resultSet.getString("customer_name");
                String date = resultSet.getString("booking_date");
                double sum = resultSet.getDouble("sum");
                boolean bookingStatus = resultSet.getBoolean("booking_status");
                bookingDTOList.add(new BookingDTO(customerName,date,sum,bookingStatus));
            }
            System.out.println(bookingDTOList);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookingDTOList;
    }

    @Override
    public List<BookingDTO> displayBookingEmp() {
        Connection connection = BaseConnection.getConnection();
        List<BookingDTO> bookingDTOListEmp = new ArrayList<>();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_BOOKING_EMP);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                String customerName = resultSet.getString("customer_name");
                String date = resultSet.getString("booking_date");
                double sum = resultSet.getDouble("sum");
                boolean bookingStatus = resultSet.getBoolean("booking_status");
                bookingDTOListEmp.add(new BookingDTO(customerName,date,sum,bookingStatus));
            }
            System.out.println(bookingDTOListEmp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookingDTOListEmp;
    }
}
