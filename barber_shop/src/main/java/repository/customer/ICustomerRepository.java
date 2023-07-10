package repository.customer;

import model.Account;
import model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> viewAllCustomer();

    void save(Customer customer);
    int getIdAccount(String username);
    void createAccount(Account account);

    Customer findById(int id);

    void update(int id, Customer customer);

    void remove(int id);
}
