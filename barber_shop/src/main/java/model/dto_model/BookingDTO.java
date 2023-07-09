package model.dto_model;

public class BookingDTO {
    private String customerName;
    private String bookingDate;
    private double price;
    private boolean bookingStatus;

    public BookingDTO() {

    }

    public boolean getBookingStatus() {
        return bookingStatus;
    }

    public void setBookingStatus(boolean bookingStatus) {
        this.bookingStatus = bookingStatus;
    }

    public BookingDTO(String customerName, String bookingDate, double price, boolean bookingStatus) {
        this.customerName = customerName;
        this.bookingDate = bookingDate;
        this.price = price;
        this.bookingStatus = bookingStatus;
    }

    public BookingDTO(String customerName, String bookingDate, double price) {
        this.customerName = customerName;
        this.bookingDate = bookingDate;
        this.price = price;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
