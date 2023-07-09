package model;

import java.util.Objects;

public class Service {
   private int serviceId;
   private String serviceName;
   private double price;
   private int serviceQuantity;
   private boolean status;

    public Service() {
    }

    public Service(String serviceName, double price, int serviceQuantity, boolean status) {
        this.serviceName = serviceName;
        this.price = price;
        this.serviceQuantity = serviceQuantity;
        this.status = status;
    }

    public Service(int serviceId, String serviceName, double price, int serviceQuantity, boolean status) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.price = price;
        this.serviceQuantity = serviceQuantity;
        this.status = status;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getServiceQuantity() {
        return serviceQuantity;
    }

    public void setServiceQuantity(int serviceQuantity) {
        this.serviceQuantity = serviceQuantity;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
