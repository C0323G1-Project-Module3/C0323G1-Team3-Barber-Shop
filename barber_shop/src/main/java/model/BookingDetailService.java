package model;

public class BookingDetailService {
    private int bookingDetailService;
    private int bookingId;
    private int serviceId;

    public BookingDetailService(int bookingDetailService, int bookingId, int serviceId) {
        this.bookingDetailService = bookingDetailService;
        this.bookingId = bookingId;
        this.serviceId = serviceId;
    }

    public BookingDetailService(int bookingId, int serviceId) {
        this.bookingId = bookingId;
        this.serviceId = serviceId;
    }

    public int getBookingDetailService() {
        return bookingDetailService;
    }

    public void setBookingDetailService(int bookingDetailService) {
        this.bookingDetailService = bookingDetailService;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }
}
