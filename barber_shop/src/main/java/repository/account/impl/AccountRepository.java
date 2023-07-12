package repository.account.impl;

import base_connection.BaseConnection;
import model.Account;
import model.dto_model.AccountDTO;
import repository.account.IAccountRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountRepository implements IAccountRepository {
    @Override
    public Account selectAccount(String userName, String passWord) {
        Connection connection = BaseConnection.getConnection();
        Account account = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from account where username=? and password=?;");
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, passWord);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                account = new Account(resultSet.getInt("account_id"), resultSet.getString("username"), resultSet.getString("password"), resultSet.getInt("role_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return account;
    }

    @Override
    public List<AccountDTO> getAllAccount() {
        List<AccountDTO> accountList = new ArrayList<>();
        Connection connection = BaseConnection.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall("call get_list_account();");
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                accountList.add(new AccountDTO(resultSet.getInt("account_id"), resultSet.getString("name"), resultSet.getString("username"), resultSet.getString("password"), resultSet.getString("role_name")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return accountList;
    }

    @Override
    public void createAccount(Account account) {

        try {
            PreparedStatement preparedStatement = BaseConnection.getConnection().prepareStatement("insert into account(account.username,account.password,account.role_id) values (?,?,?);");
            preparedStatement.setString(1, account.getUsername());
            preparedStatement.setString(2, account.getPassword());
            preparedStatement.setInt(3, account.getRoleId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteAccount(int accountId) {
        try {
            PreparedStatement preparedStatement = BaseConnection.getConnection().prepareStatement("delete from account where account.account_id = ?;");
            preparedStatement.setInt(1, accountId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void resetPassword(int accountId) {

    }

    @Override
    public Account selectAccountById(int accountId) {
        Connection connection = BaseConnection.getConnection();
        Account account = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from account where account_id=?;");
            preparedStatement.setInt(1, accountId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                account = new Account(resultSet.getInt("account_id"), resultSet.getString("username"), resultSet.getString("password"), resultSet.getInt("role_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(account);
        return account;
    }

}
