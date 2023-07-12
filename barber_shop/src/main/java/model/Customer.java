package model;

public class Customer {
    private int customerId;
    private String customerName;
    private String birthday;
    private String phone;
    private boolean gender;
    private String address;
    private int customerTypeId;
    private int customerAccountId;

    public Customer() {
    }

    public Customer(int customerId, String customerName, String birthday, String phone, boolean gender, String address, int customerTypeId, int customerAccountId) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.birthday = birthday;
        this.phone = phone;
        this.gender = gender;
        this.address = address;
        this.customerTypeId = customerTypeId;
        this.customerAccountId = customerAccountId;
    }

    public Customer(String customerName, String birthday, String phone, boolean gender, String address, int customerAccountId) {
        this.customerName = customerName;
        this.birthday = birthday;
        this.phone = phone;
        this.gender = gender;
        this.address = address;
        this.customerAccountId = customerAccountId;
    }

    public Customer(String customerName, String birthday, String phone, boolean gender, String address) {
        this.customerName = customerName;
        this.birthday = birthday;
        this.phone = phone;
        this.gender = gender;
        this.address = address;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getCustomerTypeId() {
        return customerTypeId;
    }

    public void setCustomerTypeId(int customerTypeId) {
        this.customerTypeId = customerTypeId;
    }

    public int getCustomerAccountId() {
        return customerAccountId;
    }

    public void setCustomerAccountId(int customerAccountId) {
        this.customerAccountId = customerAccountId;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", customerName='" + customerName + '\'' +
                ", birthday='" + birthday + '\'' +
                ", phone='" + phone + '\'' +
                ", gender=" + gender +
                ", address='" + address + '\'' +
                ", customerTypeId=" + customerTypeId +
                ", customerAccountId=" + customerAccountId +
                '}';
    }
}
