package repository.service;

import model.Service;

import java.util.List;

public interface IServiceRepository {
    List<Service> displayAll();

    void addService(Service service);

    public boolean updateService(Service service);

    Service getById(int id);
}
