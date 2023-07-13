package service.service;

import model.Service;

import java.util.List;

public interface IServiceService {
    List<Service> displayAll();

    void addService(Service service);

    public boolean updateService(Service service);

    Service getById(int id);
}
