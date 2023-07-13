package controller.booking;

import controller.account.AccountServlet;
import model.Account;
import model.Booking;
import model.Customer;
import model.Service;
import model.dto_model.BookingDTO;
import service.booking.IBookingService;
import service.booking.impl.BookingService;
import service.booking_detail_service.IBookingDetailServiceService;
import service.booking_detail_service.impl.BookingDetailServiceService;
import service.customer.ICustomerService;
import service.customer.impl.CustomerService;
import service.service.IServiceService;
import service.service.impl.ServiceService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BookingServlet", value = "/BookingServlet")
public class BookingServlet extends HttpServlet {
    private final IBookingService bookingService = new BookingService();
    private final ICustomerService customerService = new CustomerService();
    private final IServiceService serviceService = new ServiceService();
    private final IBookingDetailServiceService bdss = new BookingDetailServiceService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        if (session.getAttribute("account") == null)
            action = "back";
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "showBookingEmp":
                if (((Account) session.getAttribute("account")).getRoleId() == 2)
                    showBookingEmp(request, response);
                break;
            case "showAddBooking":
                if (((Account) session.getAttribute("account")).getRoleId() == 1)
                    showAddBooking(request, response);
                break;
            case "showHistoryBooking":
                if (((Account) session.getAttribute("account")).getRoleId() == 1)
                    showHistoryBooking(request, response);
                break;
            case "deleteBooking":
                if (((Account) session.getAttribute("account")).getRoleId() == 1)
                    deleteBooking(request, response);
                break;
            case "back":
                response.sendRedirect("/AccountServlet");
                break;
            default:
                if (((Account) session.getAttribute("account")).getRoleId() == 3)
                    showList(request, response);
                break;
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<BookingDTO> bookingDTOList = bookingService.displayBooking();
        request.setAttribute("bookingDTOList", bookingDTOList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/show_booking.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    private void showHistoryBooking(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        int id = ((Account) session.getAttribute("account")).getAccountId();
        Customer customer = customerService.findById(id);
        List<BookingDTO> bookingList = bookingService.displayHistoryBooking(id);
        System.out.println(bookingList);
        request.setAttribute("id", id);
        request.setAttribute("bookingList", bookingList);
        request.setAttribute("customer", customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/history_booking.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showAddBooking(HttpServletRequest request, HttpServletResponse response) {
        List<Service> serviceList = serviceService.displayAll();
        int idCustomer = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findById(idCustomer);
        request.setAttribute("id", idCustomer);
        request.setAttribute("customer", customer);
        request.setAttribute("serviceList", serviceList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/add_booking.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showBookingEmp(HttpServletRequest request, HttpServletResponse response) {
        List<BookingDTO> dtoList = bookingService.displayBookingEmp();
        request.setAttribute("dtoList", dtoList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/display_booking_emp.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addBooking":
                addBooking(request, response);
                break;
        }
    }

    private void deleteBooking(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idBooking = Integer.parseInt(request.getParameter("id"));
        bdss.deleteBookingDetail(idBooking);
        bookingService.deleteBooking(idBooking);
        response.sendRedirect("/BookingServlet?action=showHistoryBooking");
    }


    private void addBooking(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String bookingDate = request.getParameter("date");
        List<Integer> serviceList = new ArrayList<>();
        for (int i = 0; i < serviceService.displayAll().size(); i++) {
            String serviceId = request.getParameter("checkBox" + serviceService.displayAll().get(i).getServiceId());
            if (serviceId != null) {
                serviceList.add(Integer.parseInt(serviceId));
            }
        }
        HttpSession session = request.getSession();
        int accountId = ((Account) session.getAttribute("account")).getAccountId();
        boolean status = true;
        Booking booking = new Booking(bookingDate, accountId, status);
        int bookingId = bookingService.addBooking(booking);
        bdss.addBookingDetail(bookingId, serviceList);
        response.sendRedirect("/BookingServlet?action=showHistoryBooking");
    }
}
