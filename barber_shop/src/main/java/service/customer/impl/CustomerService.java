package service.customer.impl;

import model.Account;
import model.Customer;
import repository.customer.ICustomerRepository;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> viewAllCustomer() {
        return customerRepository.viewAllCustomer();
    }

    @Override
    public void save(Customer customer) {
        customerRepository.save(customer);
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customerRepository.update(id, customer);
    }

    @Override
    public void remove(int id) {
        customerRepository.remove(id);
    }

    @Override
    public void insertAccount(Account account) {
        customerRepository.createAccount(account);
    }

    @Override
    public int getIdAccount(String username) {
        return customerRepository.getIdAccount(username);
    }

}
