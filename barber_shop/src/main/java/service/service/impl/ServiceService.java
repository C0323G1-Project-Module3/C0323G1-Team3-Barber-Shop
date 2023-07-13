package service.service.impl;

import model.Service;
import repository.service.IServiceRepository;
import repository.service.impl.ServiceRepository;
import service.service.IServiceService;

import java.util.List;

public class ServiceService implements IServiceService {
    private static IServiceRepository serviceRepository = new ServiceRepository();

    @Override
    public List<Service> displayAll() {
        return serviceRepository.displayAll();
    }

    @Override
    public void addService(Service service) {
        serviceRepository.addService(service);
    }

    @Override
    public boolean updateService(Service service) {
        return serviceRepository.updateService(service);
    }

    @Override
    public Service getById(int id) {
        return serviceRepository.getById(id);
    }

}
