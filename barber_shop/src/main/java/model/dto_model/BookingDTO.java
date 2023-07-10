package model.dto_model;

public class BookingDTO {
    private String customerName;
    private String bookingDate;
    private double price;
    private boolean bookingStatus;
    private double totalPrice;
    private int bookingId;

    public BookingDTO() {

    }

    public BookingDTO(String customerName, String bookingDate, int bookingId, double totalPrice) {
        this.customerName = customerName;
        this.bookingDate = bookingDate;
        this.totalPrice = totalPrice;
        this.bookingId = bookingId;
    }




    public boolean isBookingStatus() {
        return bookingStatus;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
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

    @Override
    public String toString() {
        return "BookingDTO{" +
                "customerName='" + customerName + '\'' +
                ", bookingDate='" + bookingDate + '\'' +
                ", price=" + price +
                ", bookingStatus=" + bookingStatus +
                ", totalPrice=" + totalPrice +
                ", bookingId=" + bookingId +
                '}';
    }
}
