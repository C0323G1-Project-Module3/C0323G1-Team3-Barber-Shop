package repository.customer.impl;

import base_connection.BaseConnection;
import model.Account;
import model.Customer;
import repository.customer.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static final String INSERT_ACCOUNT_CUSTOMER_SQL = "insert into account(username,password,role_id) values(?,?,1);";
    private static final String INSERT_CUSTOMER_SQL = "insert into customer(customer_name,birthday,phone_number,gender,address,customer_type_id,account_id) values(?,?,?,?,?,1,?);";
    private static final String SELECT_CUSTOMER_BY_ID = "SELECT* FROM customer where customer_id=?;";
    private static final String SELECT_ALL_CUSTOMERS = "SELECT * FROM customer;";
    private static final String DELETE_CUSTOMER_SQL = "DELETE FROM customer where customer_id= ?;";
    private static final String UPDATE_CUSTOMER_SQL = "UPDATE customer set customer_name=?,birthday=?,phone_number=?,gender=?," +
            "address=?,customer_type_id=? where customer_id=?;";
    private static final String SELECT_ACCOUNT_SQL_BY_USERNAME = "SELECT * FROM account where username=?;";

    //  Customer(int customerId, String customerName, String birthday, String phone,
//           boolean gender, int customerTypeId, int customerAccountId)
    @Override
    public List<Customer> viewAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMERS);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("customer_id");
                String name = resultSet.getString("customer_name");
                String birthday = resultSet.getString("birthday");
                String phone = resultSet.getString("phone_number");
                boolean gender = resultSet.getBoolean("gender");
                String address = resultSet.getString("address");
                int typeId = resultSet.getInt("customer_type_id");
                int accountId = resultSet.getInt("account_id");
                customerList.add(new Customer(id,name,birthday,phone,gender,address,typeId,accountId));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return customerList;
    }

    @Override
    public void save(Customer customer) {
        Connection connection = BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL);
            preparedStatement.setString(1, customer.getCustomerName());
            preparedStatement.setString(2, customer.getBirthday());
            preparedStatement.setString(3, customer.getPhone());
            preparedStatement.setBoolean(4, customer.isGender());
            preparedStatement.setString(5, customer.getAddress());
            preparedStatement.setInt(6, customer.getCustomerAccountId());
            preparedStatement.executeUpdate();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int getIdAccount(String username) {
        int accountId = 0;
        Connection connection = BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ACCOUNT_SQL_BY_USERNAME);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                accountId = resultSet.getInt("account_id");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return accountId;
    }

    @Override
    public void createAccount(Account account) {
        Connection connection = BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ACCOUNT_CUSTOMER_SQL);
            preparedStatement.setString(1, account.getUsername());
            preparedStatement.setString(2, account.getPassword());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    //  Customer(int customerId, String customerName, String birthday, String phone,
//           boolean gender, int customerTypeId, int customerAccountId)

    @Override
    public Customer findById(int id) {
        Customer customer=null;
        Connection connection=BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet= preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerId=resultSet.getInt("customer_id");
                String name=resultSet.getString("customer_name");
                String birth=resultSet.getString("birthday");
                String phone=resultSet.getString("phone_number");
                boolean gender=resultSet.getBoolean("gender");
                String address=resultSet.getString("address");
                int typeId =resultSet.getInt("customer_type_id");
                int accountId=resultSet.getInt("account_id");
                customer=new Customer(customerId,name,birth,phone,gender,address,typeId,accountId);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customer;
    }
    //
//    "UPDATE customer set customer_name=?,birthday=?,phone_number=?,gender=?," +
//            "address=?,customer_type_id=?,account_id=?;";
    @Override
    public void update(int id, Customer customer) {
        Connection connection=BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(UPDATE_CUSTOMER_SQL);
            preparedStatement.setString(1,customer.getCustomerName());
            preparedStatement.setString(2,customer.getBirthday());
            preparedStatement.setString(3,customer.getPhone());
            preparedStatement.setBoolean(4,customer.isGender());
            preparedStatement.setString(5,customer.getAddress());
            preparedStatement.setInt(6,customer.getCustomerTypeId());
            preparedStatement.setInt(7,id);
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    @Override
    public void remove(int id) {
        Connection connection=BaseConnection.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(DELETE_CUSTOMER_SQL);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
