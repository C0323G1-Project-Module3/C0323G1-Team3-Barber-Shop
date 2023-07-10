package service.customer;

import model.Account;
import model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> viewAllCustomer();

    void save(Customer customer);

    Customer findById(int id);

    void update(int id, Customer customer);

    void remove(int id);
    void insertAccount(Account account);
    int getIdAccount(String username);
}
