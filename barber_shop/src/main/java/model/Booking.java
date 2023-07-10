package model;

public class Booking {
    private int bookingId;
    private String bookingDate;
    private int accountId;
    private boolean bookingStatus;

    public Booking() {

    }

    public Booking(int bookingId, String bookingDate, int accountId, boolean bookingStatus) {
        this.bookingId = bookingId;
        this.bookingDate = bookingDate;
        this.accountId = accountId;
        this.bookingStatus = bookingStatus;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public boolean isBookingStatus() {
        return bookingStatus;
    }

    public void setBookingStatus(boolean bookingStatus) {
        this.bookingStatus = bookingStatus;
    }
}
