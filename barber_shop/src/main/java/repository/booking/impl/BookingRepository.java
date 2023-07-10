package repository.booking.impl;

import base_connection.BaseConnection;
import model.Booking;
import model.dto_model.BookingDTO;
import repository.booking.IBookingRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BookingRepository implements IBookingRepository {
    private final String SELECT_BOOKING = "call select_booking();";
    private final String SELECT_BOOKING_EMP = "call select_booking_emp();";
    private final String ADD_BOOKING = "insert into booking(booking_date,account_id,booking_status) values (?,?,?);";
    private final String GET_BOOKING_ID = "select booking.booking_id from booking where account_id = ? ;";
    private final String HISTORY_BOOKING = "call select_booking_history(?) ;";
    private final String ADD_BOOKING_DTO = "call select_booking_dto(1);";

    private final String DELETE_BOOKING = "delete from booking where booking_id= ?;";

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
                bookingDTOList.add(new BookingDTO(customerName, date, sum, bookingStatus));
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
                bookingDTOListEmp.add(new BookingDTO(customerName, date, sum, bookingStatus));
            }
            System.out.println(bookingDTOListEmp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookingDTOListEmp;
    }

    @Override
    public int addBooking(Booking booking) {
        Connection connection = BaseConnection.getConnection();
        int bookingId = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_BOOKING);
            preparedStatement.setString(1, booking.getBookingDate());
            preparedStatement.setInt(2, booking.getAccountId());
            preparedStatement.setBoolean(3, booking.isBookingStatus());
            preparedStatement.execute();
            preparedStatement = connection.prepareStatement(GET_BOOKING_ID);
            preparedStatement.setInt(1, booking.getAccountId());
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                bookingId = rs.getInt("booking_id");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookingId;
    }

    @Override
    public List<BookingDTO> displayHistoryBooking(int accountId) {
        List<BookingDTO> bookingList = new ArrayList<>();
        Connection connection = BaseConnection.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall(HISTORY_BOOKING);
            callableStatement.setInt(1, accountId);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("customer_name");
                String bookingDate = resultSet.getString("booking_date");
                int bookingId = resultSet.getInt("booking_id");
                double sumPrice = resultSet.getDouble("total_price");
                bookingList.add(new BookingDTO(name, bookingDate, bookingId, sumPrice));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println(bookingList);
        return bookingList;
    }

    @Override
    public void addBooking(BookingDTO bookingDTO) {
        Connection connection = BaseConnection.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall(ADD_BOOKING_DTO);
            callableStatement.setInt(1, bookingDTO.getBookingId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    public void deleteBooking(int idBooking) {
        Connection connection = BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BOOKING);
            preparedStatement.setInt(1, idBooking);
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
